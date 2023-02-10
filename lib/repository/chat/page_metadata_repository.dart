import 'package:dabi_chat/data/chat/page_metadata.dart';
import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/chat/settings/page_metadata.dart';
import 'package:dabi_chat/model/chat/settings/page_metadata_dto.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:flutter/material.dart';

class PageMetadataRepository extends IRepository
    with
        CachingStrategies<PageMetadata>,
        DataSourceMixin<Map<String, dynamic>, PageMetadata> {
  PageMetadataRepository({
    required this.id,
    required this.source,
    required super.ref,
    @visibleForTesting Logging? log,
    @visibleForTesting PageMetadataDataSource? data_source,
  })  : data_source = data_source ?? PageMetadataDataSource(ref, id, source),
        super(
          log: log ?? Logging('PageMetadataRepository'),
        );

  final String id;
  final AcquisitionSource source;
  @override
  DataSource<PageMetadata> data_source;

  @visibleForTesting
  Future<PaginationResponse<PageMetadataDto>> getAll() async {
    try {
      log.info(subTag: 'getAll');
      final response = await http.get('page-settings/');
      final data = PaginationResponse<PageMetadataDto>.fromJson(response,
          (object) => PageMetadataDto.fromJson(object as Map<String, dynamic>));
      log.info(subTag: 'getAll success', message: 'count:${data.count}');
      return data;
    } catch (e) {
      log.info(
          subTag: '_getAll failed',
          message: [
            'id: $id',
            e.toString(),
          ].join('\n'));
      rethrow;
    }
  }

  Future<PageMetadata> getFromSource() async {
    try {
      log.info(subTag: 'getFromSource');
      final metadata = await cacheFirst(() async {
        final response = await getAll();
        final PageMetadataDto metadataDto =
            response.results.firstWhere((element) {
          return (element as PageMetadataDto).id == id;
        });
        return metadataDto.fromSource(source);
      });
      log.info(subTag: 'getFromSource success');
      return metadata;
    } on StateError catch (e) {
      log.info(
          subTag: 'getFromSource failed',
          message: [
            'cannot found metadata with id: $id',
            e.toString(),
          ].join('\n'));
      rethrow;
    } catch (e) {
      log.info(
          subTag: 'getFromSource failed',
          message: [
            'id: $id',
            e.toString(),
          ].join('\n'));
      rethrow;
    }
  }
}
