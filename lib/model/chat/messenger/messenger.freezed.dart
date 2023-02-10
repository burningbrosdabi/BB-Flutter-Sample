// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messenger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Messenger _$MessengerFromJson(Map<String, dynamic> json) {
  return _Messenger.fromJson(json);
}

/// @nodoc
mixin _$Messenger {
  List<Conversation> get data => throw _privateConstructorUsedError;
  Paging? get paging => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessengerCopyWith<Messenger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessengerCopyWith<$Res> {
  factory $MessengerCopyWith(Messenger value, $Res Function(Messenger) then) =
      _$MessengerCopyWithImpl<$Res>;
  $Res call({List<Conversation> data, Paging? paging});

  $PagingCopyWith<$Res>? get paging;
}

/// @nodoc
class _$MessengerCopyWithImpl<$Res> implements $MessengerCopyWith<$Res> {
  _$MessengerCopyWithImpl(this._value, this._then);

  final Messenger _value;
  // ignore: unused_field
  final $Res Function(Messenger) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? paging = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      paging: paging == freezed
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging?,
    ));
  }

  @override
  $PagingCopyWith<$Res>? get paging {
    if (_value.paging == null) {
      return null;
    }

    return $PagingCopyWith<$Res>(_value.paging!, (value) {
      return _then(_value.copyWith(paging: value));
    });
  }
}

/// @nodoc
abstract class _$$_MessengerCopyWith<$Res> implements $MessengerCopyWith<$Res> {
  factory _$$_MessengerCopyWith(
          _$_Messenger value, $Res Function(_$_Messenger) then) =
      __$$_MessengerCopyWithImpl<$Res>;
  @override
  $Res call({List<Conversation> data, Paging? paging});

  @override
  $PagingCopyWith<$Res>? get paging;
}

/// @nodoc
class __$$_MessengerCopyWithImpl<$Res> extends _$MessengerCopyWithImpl<$Res>
    implements _$$_MessengerCopyWith<$Res> {
  __$$_MessengerCopyWithImpl(
      _$_Messenger _value, $Res Function(_$_Messenger) _then)
      : super(_value, (v) => _then(v as _$_Messenger));

  @override
  _$_Messenger get _value => super._value as _$_Messenger;

  @override
  $Res call({
    Object? data = freezed,
    Object? paging = freezed,
  }) {
    return _then(_$_Messenger(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
      paging: paging == freezed
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_Messenger extends _Messenger {
  _$_Messenger({required final List<Conversation> data, this.paging})
      : _data = data,
        super._();

  factory _$_Messenger.fromJson(Map<String, dynamic> json) =>
      _$$_MessengerFromJson(json);

  final List<Conversation> _data;
  @override
  List<Conversation> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Paging? paging;

  @override
  String toString() {
    return 'Messenger(data: $data, paging: $paging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Messenger &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.paging, paging));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(paging));

  @JsonKey(ignore: true)
  @override
  _$$_MessengerCopyWith<_$_Messenger> get copyWith =>
      __$$_MessengerCopyWithImpl<_$_Messenger>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessengerToJson(
      this,
    );
  }
}

abstract class _Messenger extends Messenger {
  factory _Messenger(
      {required final List<Conversation> data,
      final Paging? paging}) = _$_Messenger;
  _Messenger._() : super._();

  factory _Messenger.fromJson(Map<String, dynamic> json) =
      _$_Messenger.fromJson;

  @override
  List<Conversation> get data;
  @override
  Paging? get paging;
  @override
  @JsonKey(ignore: true)
  _$$_MessengerCopyWith<_$_Messenger> get copyWith =>
      throw _privateConstructorUsedError;
}

Paging _$PagingFromJson(Map<String, dynamic> json) {
  return _Paging.fromJson(json);
}

/// @nodoc
mixin _$Paging {
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingCopyWith<Paging> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingCopyWith<$Res> {
  factory $PagingCopyWith(Paging value, $Res Function(Paging) then) =
      _$PagingCopyWithImpl<$Res>;
  $Res call({String? next, String? previous});
}

/// @nodoc
class _$PagingCopyWithImpl<$Res> implements $PagingCopyWith<$Res> {
  _$PagingCopyWithImpl(this._value, this._then);

  final Paging _value;
  // ignore: unused_field
  final $Res Function(Paging) _then;

  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_value.copyWith(
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PagingCopyWith<$Res> implements $PagingCopyWith<$Res> {
  factory _$$_PagingCopyWith(_$_Paging value, $Res Function(_$_Paging) then) =
      __$$_PagingCopyWithImpl<$Res>;
  @override
  $Res call({String? next, String? previous});
}

/// @nodoc
class __$$_PagingCopyWithImpl<$Res> extends _$PagingCopyWithImpl<$Res>
    implements _$$_PagingCopyWith<$Res> {
  __$$_PagingCopyWithImpl(_$_Paging _value, $Res Function(_$_Paging) _then)
      : super(_value, (v) => _then(v as _$_Paging));

  @override
  _$_Paging get _value => super._value as _$_Paging;

  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$_Paging(
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_Paging extends _Paging {
  _$_Paging({this.next, this.previous}) : super._();

  factory _$_Paging.fromJson(Map<String, dynamic> json) =>
      _$$_PagingFromJson(json);

  @override
  final String? next;
  @override
  final String? previous;

  @override
  String toString() {
    return 'Paging(next: $next, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Paging &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous));

  @JsonKey(ignore: true)
  @override
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      __$$_PagingCopyWithImpl<_$_Paging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingToJson(
      this,
    );
  }
}

abstract class _Paging extends Paging {
  factory _Paging({final String? next, final String? previous}) = _$_Paging;
  _Paging._() : super._();

  factory _Paging.fromJson(Map<String, dynamic> json) = _$_Paging.fromJson;

  @override
  String? get next;
  @override
  String? get previous;
  @override
  @JsonKey(ignore: true)
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      throw _privateConstructorUsedError;
}
