import 'package:dabi_chat/features/home/home.dart';
import 'package:dabi_chat/model/comment/comment_status.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/comment/comment_repository.dart';
import 'package:dabi_chat/widget/infinite_list/infinite_list.dart';

final comment_list_provider =
    Provider((ref) => $PagingController<Comment, void>(
          fetch: ref.read(comment_repo_provider).paging,
          keyExtractor: (value) => value.comment_id,
        ));

final comment_status = StateProvider.family<CommentStatus, String>(
  (ref, _) => const CommentStatus.isNew(),
);
