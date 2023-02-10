import 'dart:async';

import 'package:async/async.dart';
import 'package:dabi_chat/features/chat/chat.dart';
import 'package:dabi_chat/features/reply/provider/provider.dart';
import 'package:dabi_chat/model/chat/settings/page_metadata.dart';
import 'package:dabi_chat/model/model.dart' hide User;
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/services/http/http.dart';
import 'package:dabi_chat/services/http/http_service.dart';
import 'package:dabi_chat/services/messenger/messenger_service.dart';

export 'package:flutter_chat_types/flutter_chat_types.dart';

class ChatProvider implements ConversationObservation {
  final Ref ref;
  late final Logging log;
  bool initialized = false;

  late final User receiver;
  late final User sender;
  late final ChatPageParams params;

  CancelableOperation<Messenger?>? _refresh_op;

  // StreamSubscription? _first_page_sub;
  @override
  late String conversation_id;

  final Set<String> captured_paging = {};

  ChatProvider({
    required this.conversation_id,
    required this.ref,
  }) {
    log = Logging('ChatProvider | $conversation_id');
    ref.read(messengerService).subscribe(this);
  }

  Future<void> init(ChatPageParams params) async {
    ref.read(chat_manager_provider).trackActive(conversation_id);
    this.params = params;
    log.info(subTag: 'init');

    final metadata = await PageMetadataRepository(
      id: params.setting_id,
      source: params.source,
      ref: ref,
    ).getFromSource();

    receiver = User(id: metadata.page_id);

    log.info(subTag: 'init', message: 'register http with token');

    final http = Http(
      configBuilder: GraphConfigBuilder(metadata.token),
    );

    log.info(
        subTag: 'init',
        message: 'build messenger repo page_id: ${metadata.page_id}');

    ref
        .read(messengerRepoProvider(conversation_id).notifier)
        .build(http: http, metadata: metadata);

    await Future.wait([
      streamingFirstPage(),
      _getSender(http: http, receiver_id: receiver.id),
    ]);

    ref.read(reply_provider(conversation_id)).getReplyMap();
    initialized = true;
  }

  Future<Messenger?> streamingFirstPage() async {
    try {
      final stream =
          ref.read(messengerRepoProvider(conversation_id)).streaming();
      log.info(
        subTag: 'streamingFirstPage',
        message: 'listening for message stream',
      );
      stream.take(2).listen((event) {
        log.info(
            subTag: 'streamingFirstPage',
            message: 'received streaming message');
        final messages = event.data.map((e) => e.toMessage()).toList();
        captured_paging.clear();
        ref
            .read(messengerProvider(conversation_id).notifier)
            .put(messages, event.paging?.next);
      });

      return stream.first;
    } catch (e) {
      return null;
    }
  }

  Future<void> _getSender(
      {required Http http, required String receiver_id}) async {
    final tuple = await ParticipantRepository(
      id: conversation_id,
      http: http,
      ref: ref,
    ).getParticipant(receiver_id);
    sender = tuple.item2;
  }

  Future<List<Conversation>?> onPagingFetch() async {
    try {
      final paging =
          ref.read(messengerProvider(conversation_id).notifier).paging;
      if (paging == null) return null;
      // prevent duplicate fetching
      // due to finding old reply
      if (captured_paging.contains(paging)) return null;
      captured_paging.add(paging);
      final op = CancelableOperation.fromFuture(
        ref.read(messengerRepoProvider(conversation_id)).fetchPaginate(
              ref.read(messengerProvider(conversation_id).notifier).paging!,
            ),
      );
      op.then((data) {
        ref.read(messengerProvider(conversation_id).notifier).append(data);
      });
      final response = await op.value;
      log.info(subTag: 'onEndReached success');
      return response.data;
    } catch (e) {
      log.error(subTag: 'onEndReached failed', message: e.toString());
      rethrow;
    }
  }

  @override
  void onDeleteMessage(String message_id) {
    log.info(subTag: 'onDeleteMessage', message: 'message.id: $message_id');
    ref.read(messengerProvider(conversation_id).notifier).remove(message_id);
  }

  @override
  void onRecivedMessages(Message message) {
    log.info(subTag: 'onRecivedMessages', message: 'message.id: ${message.id}');
    ref.read(messengerProvider(conversation_id).notifier).push(message);
  }

  Future<void> refresh() async {
    _refresh_op = CancelableOperation<Messenger?>.fromFuture((() async {
      log.info(subTag: 'refresh');
      final response =
          await ref.read(messengerRepoProvider(conversation_id)).sync();
      if (response == null) {
        log.info(subTag: 'refresh done', message: 'no change found');
        return null;
      }
      log.info(subTag: 'refresh success');
      return response;
    })());

    _refresh_op?.value.then((response) {
      log.info(subTag: 'applying refresh data');
      if (response == null) return;
      final messages = response.data
          .map((conversation) => conversation.toMessage())
          .toList();
      ref
          .read(messengerProvider(conversation_id).notifier)
          .put(messages, response.paging?.next);
      captured_paging.clear();
    });
  }

  void cancelingRefresh() {
    _refresh_op?.cancel();
  }

  Future<void> sync() async {
    log.info(subTag: 'sync');
    final response =
        await ref.read(messengerRepoProvider(conversation_id)).sync();
    if (response == null) {
      log.info(subTag: 'sync done', message: 'no change found');
      return;
    }

    final messages =
        response.data.map((conversation) => conversation.toMessage()).toList();
    ref
        .read(messengerProvider(conversation_id).notifier)
        .put(messages, response.paging?.next);
    log.info(subTag: 'sync done', message: 'conversation updated');
  }
}

final chatProvider = Provider.family<ChatProvider, String>(
  (ref, conversation_id) {
    return ChatProvider(
      ref: ref,
      conversation_id: conversation_id,
    );
  },
);

final chatInitializeFuture =
    FutureProvider.family<void, ChatPageParams>((ref, params) {
  return ref.watch(chatProvider(params.id)).init(params);
});

final messengerRepoProvider = StateNotifierProvider.family<
        MessengerRepoProvider, MessengerRepository, String>(
    (ref, conversation_id) => MessengerRepoProvider(ref, conversation_id));

final ownership_future =
    FutureProvider.family<void, String>((ref, conversation_id) {
  return ref.watch(messengerRepoProvider(conversation_id)).checkOwnership();
});

final inspect_mode = StateProvider<bool>((ref) => false);

class MessengerRepoProvider extends StateNotifier<MessengerRepository> {
  MessengerRepoProvider(this.ref, this.conversation_id)
      : super(FBMessengerRepository(
          ref: ref,
          conversation_id: conversation_id,
          http: Http(
            configBuilder: GraphConfigBuilder(''),
          ),
        ));

  final Ref ref;
  final String conversation_id;

  void build({
    required Http http,
    required PageMetadata metadata,
  }) {
    state = metadata.when<MessengerRepository>(FB: (id, name, page_id, token) {
      return FBMessengerRepository(
        ref: ref,
        http: http,
        conversation_id: conversation_id,
      );
    }, IG: (_id, name, page_id, token) {
      return IGMessengerRepository(
        ref: ref,
        http: http,
        conversation_id: conversation_id,
      );
    });
  }
}
