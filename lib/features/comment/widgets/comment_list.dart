import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../provider/comment_list_provider.dart';
import 'comment_item.dart';

class CommentList extends ConsumerWidget {
  const CommentList({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    return RefreshIndicator(
      onRefresh: () =>
          ref.watch(comment_list_provider).refresh(background: true),
      child: PagedListView<int, Comment>.separated(
        pagingController: ref.read(comment_list_provider).pagingController,
        builderDelegate:
            PagedChildBuilderDelegate(itemBuilder: (context, item, int index) {
          return CommentItem(
            comment: item,
          );
        }),
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
