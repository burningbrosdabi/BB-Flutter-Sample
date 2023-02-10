// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationResponse<T> _$PaginationResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationResponse<T> {
  dynamic get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next', readValue: PaginationResponse.readNext)
  bool get has_next => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class _$_PaginationResponse<T> implements _PaginationResponse<T> {
  _$_PaginationResponse(
      {this.count = 0,
      @JsonKey(name: 'next', readValue: PaginationResponse.readNext)
          this.has_next = false,
      required final List<T> results})
      : _results = results;

  factory _$_PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PaginationResponseFromJson(json, fromJsonT);

  @override
  @JsonKey()
  final dynamic count;
  @override
  @JsonKey(name: 'next', readValue: PaginationResponse.readNext)
  final bool has_next;
  final List<T> _results;
  @override
  List<T> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PaginationResponse<$T>(count: $count, has_next: $has_next, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationResponse<T> &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.has_next, has_next) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(has_next),
      const DeepCollectionEquality().hash(_results));
}

abstract class _PaginationResponse<T> implements PaginationResponse<T> {
  factory _PaginationResponse(
      {final dynamic count,
      @JsonKey(name: 'next', readValue: PaginationResponse.readNext)
          final bool has_next,
      required final List<T> results}) = _$_PaginationResponse<T>;

  factory _PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PaginationResponse<T>.fromJson;

  @override
  dynamic get count;
  @override
  @JsonKey(name: 'next', readValue: PaginationResponse.readNext)
  bool get has_next;
  @override
  List<T> get results;
}
