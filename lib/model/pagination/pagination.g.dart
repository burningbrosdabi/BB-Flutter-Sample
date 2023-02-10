// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationResponse<T> _$$_PaginationResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PaginationResponse<T>(
      count: json['count'] ?? 0,
      has_next: PaginationResponse.readNext(json, 'next') as bool? ?? false,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );
