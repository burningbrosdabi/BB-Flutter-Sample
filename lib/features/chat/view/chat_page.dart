import 'package:dabi_chat/features/chat/chat.dart';
import 'package:dabi_chat/features/status/provider/status_provider.dart';
import 'package:dabi_chat/model/model.dart' hide User;
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

export './chat_page_params.dart';

class ChatPage extends ConsumerWidget {
  final ChatPageParams params;

  const ChatPage(this.params, {Key? key}) : super(key: key);
  static String path = 'room';

  static RouteSetting<ChatPageParams> route(ChatPageParams params) {
    return RouteSetting(
      path,
      shouldBeAuth: true,
      params: params,
      toPathUrl: () {
        return '/$path/${params.id}/${params.setting_id}/${params.source}';
      },
    );
  }

  @override
  Widget build(BuildContext context, ref) {
    return ChatView(params);
  }
}

class ChatView extends ConsumerStatefulWidget {
  final ChatPageParams params;

  const ChatView(this.params, {Key? key}) : super(key: key);

  @override
  ConsumerState<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends ConsumerState<ChatView> {
  final log = Logging('ChatView');

  @override
  void initState() {
    super.initState();

    ref.read(chatProvider(widget.params.id)).cancelingRefresh();

    if (ref.read(chatProvider(widget.params.id)).initialized) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        ref.read(chatProvider(widget.params.id)).refresh();
      });
    } else {
      ref.read(chatInitializeFuture(widget.params)).when<void>(
            data: (data) {
              ref.read(postmanProvider(widget.params.id)).markSeen();
            },
            error: (error, stackTrace) {
              ref.refresh(chatProvider(widget.params.id));
              ref.refresh(chatInitializeFuture(widget.params));
            },
            loading: () {},
          );
    }

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(status_provider(widget.params.id).notifier).markUnanswer();
    });
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final initialization = ref.watch(
      chatInitializeFuture(
        widget.params,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: initialization.when(
          data: (_) => Text(
              ref.watch(chatProvider(widget.params.id)).sender.firstName ?? ''),
          error: (error, stackTrace) => const Offstage(),
          loading: () => const Offstage(),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        icon: Icon(
                          Dabicons.small_warning,
                          color: context.theme.primaryColor,
                        ),
                        content: const Text(
                            'Bạn có muốn đánh dấu hoàn thành đoạn hội thoại này?'),
                        actions: [
                          TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: context.theme.primaryColor,
                              ),
                              onPressed: () {
                                ref
                                    .read(status_provider(widget.params.id)
                                        .notifier)
                                    .markAnswered();
                                Navigator.of(context).pop();
                                ref.read(navigatorProvider).pop();
                              },
                              child: const Text('Xác nhận')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Bỏ qua',
                              ))
                        ],
                      ));
            },
            icon: const Icon(
              Dabicons.check,
            ),
          ),
          Consumer(builder: (context, ref, _) {
            return IconButton(
              onPressed: () {
                ref.read(inspect_mode.notifier).state = !ref.read(inspect_mode);
              },
              icon: Icon(
                  ref.watch(inspect_mode) ? Icons.info : Icons.info_outlined),
            );
          }),
          IconButton(
              onPressed: () {
                exportLogs();
              },
              icon: const Icon(Icons.warning_rounded)),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: VerticalDivider(),
          ),
          IconButton(
              onPressed: () {
                ref.read(navigatorProvider).push(
                      $Route.customer(
                        widget.params.id,
                      ),
                    );
              },
              icon: const Icon(Dabicons.menu))
        ],
      ),
      body: SafeArea(
        child: initialization.when(
          data: (_) => ChatBody(widget.params.id),
          error: (Object _error, StackTrace? stackTracde) {
            final error = $Exception.parse(error: _error);
            return SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.only(bottom: kToolbarHeight),
                child: EmptyView.error(
                  error: error,
                  actions: const [
                    ReportButton(),
                  ],
                ),
              ),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
