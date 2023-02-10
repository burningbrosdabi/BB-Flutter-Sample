import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/data/quick_reply/pinned_quick_reply.dart';
import 'package:dabi_chat/model/quick_reply/quick_reply.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';

class PinnedQuickReplyRepository extends IRepository
    with DataSourceMixin<Map<String, dynamic>, Map<String, QuickReply>> {
  PinnedQuickReplyRepository({required super.ref})
      : data_source =
            PinnedReplyDataSource(ref, 'pinned_quick_reply_datasource'),
        super(
          log: Logging('PinnedQuickReplyRepository'),
        );

  @override
  DataSource<Map<String, QuickReply>> data_source;
}
