import 'package:dabi_chat/data/chat/chat.dart';
import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:flutter/material.dart';

class EtagRepository extends IRepository
    with DataSourceMixin<Map<String, dynamic>, Map<String, dynamic>> {
  EtagRepository({
    required super.ref,
    required super.log,
    @visibleForTesting EtagDataSource? data_source,
  }) : data_source = data_source ?? EtagDataSource(ref);

  Future<String?> getBy(String conversation_id) async {
    final etags = await data_source.getPath(conversation_id);
    if (etags is! String) return null;
    return etags;
  }

  Future<void> put(String conversation_id, String value) async {
    await data_source.put({conversation_id: value}, merged: true);
  }

  @override
  DataSource<Map<String, dynamic>> data_source;
}

class IGEtagRepository extends EtagRepository {
  IGEtagRepository({required super.ref})
      : super(log: Logging('IGEtagRepository'));

  @override
  Future<String?> getBy(String conversation_id) async {
    return null;
  }

  @override
  Future<void> put(String conversation_id, String value) async {
    return Future.value();
  }
}
