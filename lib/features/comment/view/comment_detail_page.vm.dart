import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/model/model.dart' hide User, Status;
import 'package:dabi_chat/repository/comment/comment_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:nanoid/nanoid.dart';
import 'package:rxdart/rxdart.dart';

class CommentDetailPageViewModel {
  CommentDetailPageViewModel({required WidgetRef ref, required this.comment_id})
      : _repo = ref.read(comment_repo_provider),
        _ref = ref {
    commentValue.addListener(_onCommentValueChanged);
  }

  final CommentRepository _repo;
  final WidgetRef _ref;
  final String comment_id;

  final ValueNotifier<AsyncValue<List<Message>>> messagesValue =
      ValueNotifier(const AsyncValue.loading());
  final ValueNotifier<AsyncValue<Comment>> commentValue =
      ValueNotifier(const AsyncValue.loading());
  final BehaviorSubject<List<Message>> _messagesSubject = BehaviorSubject();
  final TextEditingController controller = TextEditingController();

  Stream<List<Message>> get messageStream => _messagesSubject.stream;

  void _onCommentValueChanged() {
    messagesValue.value = commentValue.value.when<AsyncValue<List<Message>>>(
      data: (data) {
        final messages = _repo.transformToMessages(data);
        _messagesSubject.add(messages);
        return AsyncValue.data(messages);
      },
      error: AsyncValue.error,
      loading: AsyncValue.loading,
    );
  }

  void getComment() async {
    commentValue.value = await AsyncValue.guard(() {
      return _repo.getComment(comment_id);
    });
  }

  void dispose() {
    commentValue.removeListener(_onCommentValueChanged);
    messagesValue.dispose();
    commentValue.dispose();
    _messagesSubject.close();
  }

  Future<void> sendMessage() async {
    final staff_id = _ref.read(user_provider)?.pk;
    assert(staff_id != null);
    final text = controller.text;
    final Message textMessage = TextMessage(
      status: Status.sending,
      author: User(
        id: '$staff_id',
      ),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: nanoid(),
      text: text,
    );
    final next = [
      textMessage,
      ..._messagesSubject.value,
    ];
    _messagesSubject.add(next);

    try {
      await _repo.reply(comment_id, controller.text);
      commentValue.value = AsyncValue.data(commentValue.value.asData!.value
          .copyWith(private_replied_text: text));
      next[0] = textMessage.copyWith(status: Status.delivered);
      _messagesSubject.add(next);
    } catch (e) {
      next[0] = textMessage.copyWith(status: Status.error);
      _messagesSubject.add(next);
    }

    controller.clear();
  }
}
