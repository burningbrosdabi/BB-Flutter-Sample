import 'package:dabi_chat/features/comment/comment.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/navigation/provider/provider.dart';
import 'package:dabi_chat/services/navigation/routes/routes.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:flutter/material.dart';

class CommentItem extends ConsumerWidget {
  const CommentItem({required this.comment, Key? key}) : super(key: key);
  final Comment comment;

  @override
  Widget build(context, ref) {
    final status = ref.watch(comment_status(comment.comment_id));
    return Opacity(
      opacity: status.when(
        isNew: () => 1,
        replied: () => 0.3,
      ),
      child: ListTile(
        onTap: () => ref
            .read(navigatorProvider)
            .push($Route.comment(comment.comment_id)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        dense: true,
        title: Text(
          comment.username,
          style: context.textTheme.labelMedium,
        ),
        subtitle: Text(comment.comment_text),
      ),
    );
  }
}
