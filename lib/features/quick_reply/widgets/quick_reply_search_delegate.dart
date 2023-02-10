import 'package:dabi_chat/model/quick_reply/quick_reply.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'quick_reply_tile.dart';

class QuickReplySearchDelegate extends AppSearchDelegate<QuickReply> {
  final List<QuickReply> data;

  QuickReplySearchDelegate({required this.data}) : super();

  List<QuickReply> queryData() {
    if (query.length <= 2) return [];
    return data.where((reply) {
      return matchSearch(reply.title, query) || matchSearch(reply.text, query);
    }).toList();
  }

  Widget build() {
    final data = queryData();
    return ListView.separated(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return QuickReplyTile(
          item: item,
          onTap: () {
            Navigator.of(context).pop<QuickReply>(item);
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return build();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return build();
  }
}
