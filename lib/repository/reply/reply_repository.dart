import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/data/reply/reply.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
export 'reply_id_map_repository.dart';

class ReplyRepository extends IRepository
    with DataSourceMixin<Map<String, dynamic>, Map<String, Message>> {
  ReplyRepository({
    required super.ref,
  })  : data_source = ReplyDataSource(ref, 'reply_ds'),
        super(
          log: Logging('ReplyRepository'),
        );

  @override
  DataSource<Map<String, Message>> data_source;
}
