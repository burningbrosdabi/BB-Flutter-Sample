import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentDataSource extends DataSourceList<Comment> {
  CommentDataSource(Ref ref, {super.version})
      : super(ref, 'comment_datasource');

  @override
  Comment itemFromJson(json) => Comment.fromJson(json);

  @override
  Map<String, dynamic> itemToJson(Comment value) => value.toJson();

  @override
  String primaryKeyExtractor(Comment value) => value.comment_id;
}
