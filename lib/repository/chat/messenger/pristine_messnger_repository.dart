import 'package:dabi_chat/data/chat/messenger_data.dart';
import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/repository/chat/messenger/etag_repository.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

class PristineMessengerRepository extends IRepository
    with
        CachingStrategies<Map<String, dynamic>>,
        DataSourceMixin<Map<String, dynamic>, Map<String, dynamic>> {
  final String conversation_id;
  final EtagRepository? etag_repo;

  PristineMessengerRepository({
    required super.ref,
    required this.conversation_id,
    required super.http,
    @visibleForTesting Logging? log,
    @visibleForTesting PristineMessengerDataSource? data_source,
    this.etag_repo,
  })  : data_source =
            data_source ?? PristineMessengerDataSource(ref, conversation_id),
        super(
          log: log ?? Logging('PristineMessengerRepository'),
        );

  @override
  DataSource<Map<String, dynamic>> data_source;

  Future<Map<String, dynamic>> fetch() async {
    final etag = await etag_repo?.getBy(conversation_id);
    final response = await http.dio.get(
      '$conversation_id/messages',
      queryParameters: {
        'fields': 'message,story,created_time,from,'
            'shares{link,id,name,description,template},'
            'attachments{id,video_data,image_data,name,size,mime_type}',
      },
      options:
          etag != null ? Options(headers: {'If-None-Match': '"$etag"'}) : null,
    );

    final res_etag = response.headers.value('ETag');
    if (res_etag != null && res_etag != etag) {
      await etag_repo?.put(conversation_id, res_etag);
    }

    return response.data;
  }

  Stream<Map<String, dynamic>> streaming() {
    final stream = PublishSubject<Map<String, dynamic>>();
    get()
        .then((value) {
          if (value != null) {
            stream.add(value);
          }
          return value;
        })
        .then((_) => fetch().then((data) async {
              stream.add(data);
              save(data);
              stream.close();
            }))
        .catchError((e) {
          if (e is DioError && e.response?.statusCode == 304) {
            stream.close();
          } else
            stream.addError(e);
        });

    return stream;
  }

  Future<Map<String, dynamic>?> sync() async {
    try {
      final response = await fetch();
      await save(response);
      return response;
    } on DioError catch (e) {
      if (e.response?.statusCode != 304) {
        log.error(
            subTag: 'sync failed',
            message: 'conversation_id: $conversation_id\n${e.toString()}');
      }
      return null;
    } catch (e) {
      log.error(
          subTag: 'sync failed',
          message: 'conversation_id: $conversation_id\n${e.toString()}');
      return null;
    }
  }

  @override
  Future<void> deleteAt(String id) async {
    log.info(subTag: 'deleteAt');
    await Future.wait([
      etag_repo == null ? Future.value() : etag_repo!.deleteAt(conversation_id),
      super.delete(),
    ]);
    log.info(subTag: 'deleteAt success', message: 'id: $id');
  }
}

class FBPristineMessengerRepository extends PristineMessengerRepository {
  FBPristineMessengerRepository(
      {required super.ref, required super.conversation_id, required super.http})
      : super(
          etag_repo: EtagRepository(ref: ref, log: Logging('EtagRepository')),
        );
}

class IGPristineMessengerRepository extends PristineMessengerRepository {
  IGPristineMessengerRepository(
      {required super.ref, required super.conversation_id, required super.http})
      : super(etag_repo: IGEtagRepository(ref: ref));

  @override
  Stream<Map<String, dynamic>> streaming() {
    final stream = PublishSubject<Map<String, dynamic>>();
    fetch().then((data) async {
      stream.add(data);
      save(data);
      stream.close();
    }).catchError((e) {
      stream.addError(e);
    });

    return stream;
  }
}
