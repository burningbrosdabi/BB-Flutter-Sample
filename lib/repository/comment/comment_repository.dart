import 'package:dabi_chat/data/comment/comment_datasource.dart';
import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/features/comment/comment.dart';
import 'package:dabi_chat/model/comment/comment_status.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dabi_chat/utils/repo_utils.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';

import 'comment_api.dart';
import 'comment_message_adapter.dart';

class CommentRepository extends IRepository {
  CommentRepository({required super.ref, required String staff_id})
      : _commentApi = CommentApi(ref: ref),
        _commentDataSource = CommentDataSource(ref),
        _adapter = CommentMessageAdapter(staff_id),
        super(log: Logging('CommentRepository'));

  final CommentApi _commentApi;
  final CommentDataSource _commentDataSource;
  final CommentMessageAdapter _adapter;

  Future<PaginationResponse<Comment>> paging(int offset, [void filter]) async {
    PaginationResponse<Comment>? response;
    try {
      response = await _commentApi.paging(offset);
      await _commentDataSource.put(response.results as List<Comment>);
    } catch (e) {
      response = await _commentDataSource.paging(offset);
      if (response == null) rethrow;
    }
    for (final comment in response.results as List<Comment>) {
      ref.read(comment_status(comment.comment_id).notifier).state =
          comment.status;
    }
    return response;
  }

  Future<Comment> getComment(String comment_id) async {
    return cacheFirstFn<Comment>(
      getFromCache: () => _commentDataSource.getByKey(comment_id),
      getFromAPi: () => _commentApi.getComment(comment_id),
      saveToCache: (value) => _commentDataSource.put([value]),
    );
  }

  List<Message> transformToMessages(Comment coment) {
    return _adapter.toMessages(coment);
  }

  Future<void> reply(String comment_id, String text) async {
    await _commentApi.reply(comment_id, text);
    ref.read(comment_status(comment_id).notifier).state =
        const CommentStatus.replied();
    await _commentDataSource.update(
        comment_id, {'private_replied_text': text, 'status': 'REPLIED'});

    // return
  }
}

final comment_repo_provider = Provider((ref) {
  final staff_id = ref.read(user_provider)?.pk;
  assert(staff_id != null, 'user pk should not be null');
  return CommentRepository(ref: ref, staff_id: '$staff_id');
});
