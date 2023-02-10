// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderArgs {
  String get conversation_id => throw _privateConstructorUsedError;
  String get order_id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderArgsCopyWith<OrderArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderArgsCopyWith<$Res> {
  factory $OrderArgsCopyWith(OrderArgs value, $Res Function(OrderArgs) then) =
      _$OrderArgsCopyWithImpl<$Res>;
  $Res call({String conversation_id, String order_id});
}

/// @nodoc
class _$OrderArgsCopyWithImpl<$Res> implements $OrderArgsCopyWith<$Res> {
  _$OrderArgsCopyWithImpl(this._value, this._then);

  final OrderArgs _value;
  // ignore: unused_field
  final $Res Function(OrderArgs) _then;

  @override
  $Res call({
    Object? conversation_id = freezed,
    Object? order_id = freezed,
  }) {
    return _then(_value.copyWith(
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as String,
      order_id: order_id == freezed
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderArgsCopyWith<$Res> implements $OrderArgsCopyWith<$Res> {
  factory _$$_OrderArgsCopyWith(
          _$_OrderArgs value, $Res Function(_$_OrderArgs) then) =
      __$$_OrderArgsCopyWithImpl<$Res>;
  @override
  $Res call({String conversation_id, String order_id});
}

/// @nodoc
class __$$_OrderArgsCopyWithImpl<$Res> extends _$OrderArgsCopyWithImpl<$Res>
    implements _$$_OrderArgsCopyWith<$Res> {
  __$$_OrderArgsCopyWithImpl(
      _$_OrderArgs _value, $Res Function(_$_OrderArgs) _then)
      : super(_value, (v) => _then(v as _$_OrderArgs));

  @override
  _$_OrderArgs get _value => super._value as _$_OrderArgs;

  @override
  $Res call({
    Object? conversation_id = freezed,
    Object? order_id = freezed,
  }) {
    return _then(_$_OrderArgs(
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as String,
      order_id: order_id == freezed
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OrderArgs extends _OrderArgs {
  const _$_OrderArgs({required this.conversation_id, required this.order_id})
      : super._();

  @override
  final String conversation_id;
  @override
  final String order_id;

  @override
  String toString() {
    return 'OrderArgs(conversation_id: $conversation_id, order_id: $order_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderArgs &&
            const DeepCollectionEquality()
                .equals(other.conversation_id, conversation_id) &&
            const DeepCollectionEquality().equals(other.order_id, order_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(conversation_id),
      const DeepCollectionEquality().hash(order_id));

  @JsonKey(ignore: true)
  @override
  _$$_OrderArgsCopyWith<_$_OrderArgs> get copyWith =>
      __$$_OrderArgsCopyWithImpl<_$_OrderArgs>(this, _$identity);
}

abstract class _OrderArgs extends OrderArgs {
  const factory _OrderArgs(
      {required final String conversation_id,
      required final String order_id}) = _$_OrderArgs;
  const _OrderArgs._() : super._();

  @override
  String get conversation_id;
  @override
  String get order_id;
  @override
  @JsonKey(ignore: true)
  _$$_OrderArgsCopyWith<_$_OrderArgs> get copyWith =>
      throw _privateConstructorUsedError;
}
