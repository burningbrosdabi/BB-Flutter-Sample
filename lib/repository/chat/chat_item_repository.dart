import 'package:dabi_chat/features/status/provider/status_provider.dart';
import 'package:dabi_chat/model/chat/chat.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:flutter/foundation.dart';

class ChatItemRepository extends IRepository {
  ChatItemRepository({required super.ref, @visibleForTesting Logging? log})
      : super(log: log ?? Logging('ChatItemRepository'));

  Future<PaginationResponse<ChatItem>> getChats(int offset,
      [Status? status]) async {
    try {
      log.info(subTag: 'getChats');
      final response = await http.get('/messengers/', queryParameters: {
        'offset': offset,
        if (status != null && status != Status.UNKNOWN)
          'status': status.toString(),
      });
      final data = PaginationResponse<ChatItem>.fromJson(
        response,
        (value) => ChatItem.fromJson(value as Map<String, dynamic>),
      );
      log.info(subTag: 'getChats success', message: 'count: ${data.count}');
      for (final item in data.results as List<ChatItem>) {
        ref.read(status_provider(item.conversation_id).notifier).initValue =
            item.status;
      }
      return data;
    } catch (e) {
      log.error(subTag: 'getChats failed', message: '$e');
      rethrow;
    }
  }

  Future<void> _patch(String id, Map<String, dynamic> data) async {
    await http.patch('messengers/$id/', data: data);
  }

  void updateStatus(String conversation_id, Status statusEnum) {
    switch (statusEnum) {
      case Status.UNANSWERED:
        http.get('/messengers/$conversation_id/read/');
        break;
      case Status.ANSWERED:
        http.get('/messengers/$conversation_id/answered/');
        break;
      case Status.UNREAD:
        return;
      default:
        _patch(conversation_id, {'status': statusEnum.status});
        return;
    }
  }

  //  Future<PaginationResponse<ChatItem>> getChat(String id){

  //  }

}
