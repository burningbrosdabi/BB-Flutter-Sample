import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/data/reply/reply_id_map.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/utils/utils.dart';

class ReplyIdMapRepository extends IRepository
    with
        CachingStrategies<Map<String, String>>,
        DataSourceMixin<Map<String, dynamic>, Map<String, String>> {
  ReplyIdMapRepository({required super.ref})
      : data_source = ReplyIdMapDataSource(ref, 'reply_id_map_ds'),
        super(
          log: Logging('ReplyIdMapRepository'),
        );

  @override
  DataSource<Map<String, String>> data_source;

  Future<PaginationResponse<ReplyDto>> _getReplies(
      String conversation_id, int limit) async {
    final response = await http.get(
      'messengers/$conversation_id/replies/',
      queryParameters: {'limit': limit},
    );

    return PaginationResponse<ReplyDto>.skippableFromJson(
      response,
      (obj) => ReplyDto.fromJson(obj as Map<String, dynamic>),
    );
  }

  Future<Map<String, String>> _getReplyMap(String conversation_id) async {
    log.info(subTag: 'getReplyMap');
    final response = await fetchAll<ReplyDto>(
        fetch: (limit) => _getReplies(conversation_id, limit));

    final entries = response.results.map<MapEntry<String, String>>((result) {
      assert(result is ReplyDto);
      // ignore: avoid_dynamic_calls
      return MapEntry(result.mid, result.reply_to);
    }).toList();
    log.info(subTag: 'getReplyMap success');
    return {for (final entry in entries) entry.key: entry.value};
  }

  Future<Map<String, String>> getReplyMapWithCache(String conversation_id) {
    return cacheOnError(() => _getReplyMap(conversation_id));
  }
}
