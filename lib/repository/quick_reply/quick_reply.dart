import 'dart:async';

import 'package:dabi_chat/data/quick_reply/quick_reply.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/utils/helper.dart';
import 'package:sembast/sembast.dart';

class QuickRepliesRepository extends IRepository
    with CachingStrategies<List<QuickReply>> {
  QuickRepliesRepository({required super.ref})
      : data_source =
            QuickReplyDataSource(ref, 'quick_reply_datasource', version: 1),
        super(
          log: Logging('QuickRepliesRepository'),
        );

  final QuickReplyDataSource data_source;

  Future<List<QuickReply>> _getAllReplies() async {
    final response = await fetchAll<QuickReply>(fetch: _getQuickRepliesWithLim);
    return response.results as List<QuickReply>;
  }

  Future<PaginationResponse<QuickReply>> _getQuickRepliesWithLim(
      int limit) async {
    final response =
        await http.get('message-templates/', queryParameters: {'limit': limit});
    return PaginationResponse<QuickReply>.fromJson(
        response, (obj) => QuickReply.fromJson(obj as Map<String, dynamic>));
  }

  Future<List<QuickReply>> getQuickReplies() {
    return _getAllReplies();
  }

  Future<PaginationResponse<QuickReply>> paging(int offset,
      [void filter]) async {
    final completer = Completer<PaginationResponse<QuickReply>>();
    const lim = 10;

    final cache = await data_source.paging(
      offset,
      limit: lim,
      order: SortOrder("modified", false),
    );

    if (cache != null) {
      completer.complete(cache);
    }

    http.get('message-templates/', queryParameters: {
      'limit': lim,
      'offset': offset
    }).then((response) async {
      final paging = PaginationResponse<QuickReply>.fromJson(
          response, (obj) => QuickReply.fromJson(obj as Map<String, dynamic>));
      if (!completer.isCompleted) {
        return completer.complete(paging);
      }
      await save(paging.results as List<QuickReply>);
    });

    return completer.future;
  }

  @override
  Future<List<QuickReply>?> get([int? offset, int? limit]) {
    return data_source.get(
        finder: Finder(
      offset: offset,
      limit: limit,
      sortOrders: [
        SortOrder("modified", false),
      ],
    ));
  }

  @override
  Future<void> save(List<QuickReply> value) =>
      data_source.put(value, merged: false);
}
