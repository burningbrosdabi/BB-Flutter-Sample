import 'package:dabi_chat/model/model.dart';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:quiver/strings.dart';
import 'package:tuple/tuple.dart';

class CommentMessageAdapter {
  CommentMessageAdapter(this.staff_id);

  final String staff_id;

  Tuple2<String, String> _extractName(String name) {
    final words = name.split(" ");
    if (words.isEmpty) {
      return const Tuple2('_', '_');
    }
    if (words.length == 1) {
      return Tuple2(name, '_');
    }
    return Tuple2(words.getRange(0, 2).join(" "),
        words.getRange(2, words.length).join(""));
  }

  List<types.Message> _toMessages(Comment comment, [String? staff_id]) {
    final List<types.Message> messages = [];
    final name = _extractName(comment.username);

    final user = types.User(
      id: staff_id ?? comment.customer_id,
      firstName: name.item1,
      lastName: name.item2,
    );

    if (staff_id != null) {
      if (comment.private_replied_text != null)
        return [
          types.TextMessage(
            id: comment.comment_id,
            author: user,
            text: comment.private_replied_text!,
          )
        ];
      return [];
    }

    if (isNotBlank(comment.comment_text)) {
      messages.add(types.TextMessage(
        id: comment.comment_id,
        author: user,
        text: comment.comment_text,
      ));
    }

    if (isNotBlank(comment.comment_photo)) {
      messages.add(types.ImageMessage(
        author: user,
        id: comment.comment_photo!,
        name: comment.comment_photo!,
        size: 300,
        uri: comment.comment_photo!,
      ));
    }

    return messages;
  }

  List<types.Message> toMessages(Comment comment) {
    final List<types.Message> messages = [];
    messages.addAll(_toMessages(comment, staff_id));
    for (final reply in comment.replies) {
      messages.addAll(_toMessages(reply));
    }
    messages.addAll(_toMessages(comment));

    return messages;
  }
}
