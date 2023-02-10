// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerDto _$CustomerDtoFromJson(Map<String, dynamic> json) {
  return _CustomerDto.fromJson(json);
}

/// @nodoc
mixin _$CustomerDto {
  @JsonKey(name: 'customer')
  Customer get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerDtoCopyWith<CustomerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDtoCopyWith<$Res> {
  factory $CustomerDtoCopyWith(
          CustomerDto value, $Res Function(CustomerDto) then) =
      _$CustomerDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'customer') Customer value});

  $CustomerCopyWith<$Res> get value;
}

/// @nodoc
class _$CustomerDtoCopyWithImpl<$Res> implements $CustomerDtoCopyWith<$Res> {
  _$CustomerDtoCopyWithImpl(this._value, this._then);

  final CustomerDto _value;
  // ignore: unused_field
  final $Res Function(CustomerDto) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }

  @override
  $CustomerCopyWith<$Res> get value {
    return $CustomerCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$$_CustomerDtoCopyWith<$Res>
    implements $CustomerDtoCopyWith<$Res> {
  factory _$$_CustomerDtoCopyWith(
          _$_CustomerDto value, $Res Function(_$_CustomerDto) then) =
      __$$_CustomerDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'customer') Customer value});

  @override
  $CustomerCopyWith<$Res> get value;
}

/// @nodoc
class __$$_CustomerDtoCopyWithImpl<$Res> extends _$CustomerDtoCopyWithImpl<$Res>
    implements _$$_CustomerDtoCopyWith<$Res> {
  __$$_CustomerDtoCopyWithImpl(
      _$_CustomerDto _value, $Res Function(_$_CustomerDto) _then)
      : super(_value, (v) => _then(v as _$_CustomerDto));

  @override
  _$_CustomerDto get _value => super._value as _$_CustomerDto;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_CustomerDto(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerDto implements _CustomerDto {
  _$_CustomerDto(@JsonKey(name: 'customer') this.value);

  factory _$_CustomerDto.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerDtoFromJson(json);

  @override
  @JsonKey(name: 'customer')
  final Customer value;

  @override
  String toString() {
    return 'CustomerDto(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDto &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerDtoCopyWith<_$_CustomerDto> get copyWith =>
      __$$_CustomerDtoCopyWithImpl<_$_CustomerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerDtoToJson(
      this,
    );
  }
}

abstract class _CustomerDto implements CustomerDto {
  factory _CustomerDto(@JsonKey(name: 'customer') final Customer value) =
      _$_CustomerDto;

  factory _CustomerDto.fromJson(Map<String, dynamic> json) =
      _$_CustomerDto.fromJson;

  @override
  @JsonKey(name: 'customer')
  Customer get value;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDtoCopyWith<_$_CustomerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
