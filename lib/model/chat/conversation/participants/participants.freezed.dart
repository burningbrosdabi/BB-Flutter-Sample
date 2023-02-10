// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'participants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return _Participant.fromJson(json);
}

/// @nodoc
mixin _$Participant {
  String get sender_id => throw _privateConstructorUsedError;
  String get sender_name => throw _privateConstructorUsedError;
  String get receiver_id => throw _privateConstructorUsedError;
  String get receiver_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantCopyWith<Participant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantCopyWith<$Res> {
  factory $ParticipantCopyWith(
          Participant value, $Res Function(Participant) then) =
      _$ParticipantCopyWithImpl<$Res>;
  $Res call(
      {String sender_id,
      String sender_name,
      String receiver_id,
      String receiver_name});
}

/// @nodoc
class _$ParticipantCopyWithImpl<$Res> implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._value, this._then);

  final Participant _value;
  // ignore: unused_field
  final $Res Function(Participant) _then;

  @override
  $Res call({
    Object? sender_id = freezed,
    Object? sender_name = freezed,
    Object? receiver_id = freezed,
    Object? receiver_name = freezed,
  }) {
    return _then(_value.copyWith(
      sender_id: sender_id == freezed
          ? _value.sender_id
          : sender_id // ignore: cast_nullable_to_non_nullable
              as String,
      sender_name: sender_name == freezed
          ? _value.sender_name
          : sender_name // ignore: cast_nullable_to_non_nullable
              as String,
      receiver_id: receiver_id == freezed
          ? _value.receiver_id
          : receiver_id // ignore: cast_nullable_to_non_nullable
              as String,
      receiver_name: receiver_name == freezed
          ? _value.receiver_name
          : receiver_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ParticipantCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$$_ParticipantCopyWith(
          _$_Participant value, $Res Function(_$_Participant) then) =
      __$$_ParticipantCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sender_id,
      String sender_name,
      String receiver_id,
      String receiver_name});
}

/// @nodoc
class __$$_ParticipantCopyWithImpl<$Res> extends _$ParticipantCopyWithImpl<$Res>
    implements _$$_ParticipantCopyWith<$Res> {
  __$$_ParticipantCopyWithImpl(
      _$_Participant _value, $Res Function(_$_Participant) _then)
      : super(_value, (v) => _then(v as _$_Participant));

  @override
  _$_Participant get _value => super._value as _$_Participant;

  @override
  $Res call({
    Object? sender_id = freezed,
    Object? sender_name = freezed,
    Object? receiver_id = freezed,
    Object? receiver_name = freezed,
  }) {
    return _then(_$_Participant(
      sender_id: sender_id == freezed
          ? _value.sender_id
          : sender_id // ignore: cast_nullable_to_non_nullable
              as String,
      sender_name: sender_name == freezed
          ? _value.sender_name
          : sender_name // ignore: cast_nullable_to_non_nullable
              as String,
      receiver_id: receiver_id == freezed
          ? _value.receiver_id
          : receiver_id // ignore: cast_nullable_to_non_nullable
              as String,
      receiver_name: receiver_name == freezed
          ? _value.receiver_name
          : receiver_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_Participant extends _Participant {
  const _$_Participant(
      {required this.sender_id,
      this.sender_name = '',
      required this.receiver_id,
      this.receiver_name = ''})
      : super._();

  factory _$_Participant.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantFromJson(json);

  @override
  final String sender_id;
  @override
  @JsonKey()
  final String sender_name;
  @override
  final String receiver_id;
  @override
  @JsonKey()
  final String receiver_name;

  @override
  String toString() {
    return 'Participant(sender_id: $sender_id, sender_name: $sender_name, receiver_id: $receiver_id, receiver_name: $receiver_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Participant &&
            const DeepCollectionEquality().equals(other.sender_id, sender_id) &&
            const DeepCollectionEquality()
                .equals(other.sender_name, sender_name) &&
            const DeepCollectionEquality()
                .equals(other.receiver_id, receiver_id) &&
            const DeepCollectionEquality()
                .equals(other.receiver_name, receiver_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sender_id),
      const DeepCollectionEquality().hash(sender_name),
      const DeepCollectionEquality().hash(receiver_id),
      const DeepCollectionEquality().hash(receiver_name));

  @JsonKey(ignore: true)
  @override
  _$$_ParticipantCopyWith<_$_Participant> get copyWith =>
      __$$_ParticipantCopyWithImpl<_$_Participant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantToJson(
      this,
    );
  }
}

abstract class _Participant extends Participant {
  const factory _Participant(
      {required final String sender_id,
      final String sender_name,
      required final String receiver_id,
      final String receiver_name}) = _$_Participant;
  const _Participant._() : super._();

  factory _Participant.fromJson(Map<String, dynamic> json) =
      _$_Participant.fromJson;

  @override
  String get sender_id;
  @override
  String get sender_name;
  @override
  String get receiver_id;
  @override
  String get receiver_name;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantCopyWith<_$_Participant> get copyWith =>
      throw _privateConstructorUsedError;
}
