// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_pagination_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductPaginationParams {
  int get offset => throw _privateConstructorUsedError;
  String? get q => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductPaginationParamsCopyWith<ProductPaginationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPaginationParamsCopyWith<$Res> {
  factory $ProductPaginationParamsCopyWith(ProductPaginationParams value,
          $Res Function(ProductPaginationParams) then) =
      _$ProductPaginationParamsCopyWithImpl<$Res>;
  $Res call({int offset, String? q});
}

/// @nodoc
class _$ProductPaginationParamsCopyWithImpl<$Res>
    implements $ProductPaginationParamsCopyWith<$Res> {
  _$ProductPaginationParamsCopyWithImpl(this._value, this._then);

  final ProductPaginationParams _value;
  // ignore: unused_field
  final $Res Function(ProductPaginationParams) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? q = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      q: q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductPaginationParamsCopyWith<$Res>
    implements $ProductPaginationParamsCopyWith<$Res> {
  factory _$$_ProductPaginationParamsCopyWith(_$_ProductPaginationParams value,
          $Res Function(_$_ProductPaginationParams) then) =
      __$$_ProductPaginationParamsCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String? q});
}

/// @nodoc
class __$$_ProductPaginationParamsCopyWithImpl<$Res>
    extends _$ProductPaginationParamsCopyWithImpl<$Res>
    implements _$$_ProductPaginationParamsCopyWith<$Res> {
  __$$_ProductPaginationParamsCopyWithImpl(_$_ProductPaginationParams _value,
      $Res Function(_$_ProductPaginationParams) _then)
      : super(_value, (v) => _then(v as _$_ProductPaginationParams));

  @override
  _$_ProductPaginationParams get _value =>
      super._value as _$_ProductPaginationParams;

  @override
  $Res call({
    Object? offset = freezed,
    Object? q = freezed,
  }) {
    return _then(_$_ProductPaginationParams(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      q: q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ProductPaginationParams implements _ProductPaginationParams {
  const _$_ProductPaginationParams({required this.offset, this.q});

  @override
  final int offset;
  @override
  final String? q;

  @override
  String toString() {
    return 'ProductPaginationParams(offset: $offset, q: $q)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductPaginationParams &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.q, q));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(q));

  @JsonKey(ignore: true)
  @override
  _$$_ProductPaginationParamsCopyWith<_$_ProductPaginationParams>
      get copyWith =>
          __$$_ProductPaginationParamsCopyWithImpl<_$_ProductPaginationParams>(
              this, _$identity);
}

abstract class _ProductPaginationParams implements ProductPaginationParams {
  const factory _ProductPaginationParams(
      {required final int offset,
      final String? q}) = _$_ProductPaginationParams;

  @override
  int get offset;
  @override
  String? get q;
  @override
  @JsonKey(ignore: true)
  _$$_ProductPaginationParamsCopyWith<_$_ProductPaginationParams>
      get copyWith => throw _privateConstructorUsedError;
}
