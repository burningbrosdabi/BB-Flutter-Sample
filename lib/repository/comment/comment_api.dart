import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/http/http.dart';
import 'package:dabi_chat/services/http/http_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentApi {
  CommentApi({required Ref ref}) : http = ref.read(http_provider);
  final Http http;

  Future<PaginationResponse<Comment>> paging(int offset) async {
    final response = await http.get('feed-comments/', queryParameters: {
      'offset': offset,
      'limit': 10,
    });
    final paging = PaginationResponse<Comment>.fromJson(
        response, (value) => Comment.fromJson(value as Map<String, dynamic>));
    return paging;
  }

  Future<Comment> getComment(String comment_id) async {
    final response = await http.get('feed-comments/$comment_id');
    return Comment.fromJson(response);
  }

  Future<void> reply(String comment_id, String text) {
    return http
        .get('feed-comments/$comment_id/send_private_reply', queryParameters: {
      'reply_text': text,
    });
  }
}

/***
 * api/feed-comments/  -> list comment
    api/feed-comments/<comment_id>/send_private_reply/?reply_text="text here"   > send private reply
 */
