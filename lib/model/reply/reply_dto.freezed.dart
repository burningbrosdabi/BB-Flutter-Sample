// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reply_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplyDto _$ReplyDtoFromJson(Map<String, dynamic> json) {
  return _ReplyDto.fromJson(json);
}

/// @nodoc
mixin _$ReplyDto {
  String get mid => throw _privateConstructorUsedError;
  @JsonKey(readValue: getReplyMid)
  String get reply_to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyDtoCopyWith<ReplyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyDtoCopyWith<$Res> {
  factory $ReplyDtoCopyWith(ReplyDto value, $Res Function(ReplyDto) then) =
      _$ReplyDtoCopyWithImpl<$Res>;
  $Res call({String mid, @JsonKey(readValue: getReplyMid) String reply_to});
}

/// @nodoc
class _$ReplyDtoCopyWithImpl<$Res> implements $ReplyDtoCopyWith<$Res> {
  _$ReplyDtoCopyWithImpl(this._value, this._then);

  final ReplyDto _value;
  // ignore: unused_field
  final $Res Function(ReplyDto) _then;

  @override
  $Res call({
    Object? mid = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_value.copyWith(
      mid: mid == freezed
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as String,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ReplyDtoCopyWith<$Res> implements $ReplyDtoCopyWith<$Res> {
  factory _$$_ReplyDtoCopyWith(
          _$_ReplyDto value, $Res Function(_$_ReplyDto) then) =
      __$$_ReplyDtoCopyWithImpl<$Res>;
  @override
  $Res call({String mid, @JsonKey(readValue: getReplyMid) String reply_to});
}

/// @nodoc
class __$$_ReplyDtoCopyWithImpl<$Res> extends _$ReplyDtoCopyWithImpl<$Res>
    implements _$$_ReplyDtoCopyWith<$Res> {
  __$$_ReplyDtoCopyWithImpl(
      _$_ReplyDto _value, $Res Function(_$_ReplyDto) _then)
      : super(_value, (v) => _then(v as _$_ReplyDto));

  @override
  _$_ReplyDto get _value => super._value as _$_ReplyDto;

  @override
  $Res call({
    Object? mid = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_$_ReplyDto(
      mid: mid == freezed
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as String,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplyDto implements _ReplyDto {
  _$_ReplyDto(
      {required this.mid,
      @JsonKey(readValue: getReplyMid) required this.reply_to});

  factory _$_ReplyDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReplyDtoFromJson(json);

  @override
  final String mid;
  @override
  @JsonKey(readValue: getReplyMid)
  final String reply_to;

  @override
  String toString() {
    return 'ReplyDto(mid: $mid, reply_to: $reply_to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplyDto &&
            const DeepCollectionEquality().equals(other.mid, mid) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mid),
      const DeepCollectionEquality().hash(reply_to));

  @JsonKey(ignore: true)
  @override
  _$$_ReplyDtoCopyWith<_$_ReplyDto> get copyWith =>
      __$$_ReplyDtoCopyWithImpl<_$_ReplyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplyDtoToJson(
      this,
    );
  }
}

abstract class _ReplyDto implements ReplyDto {
  factory _ReplyDto(
          {required final String mid,
          @JsonKey(readValue: getReplyMid) required final String reply_to}) =
      _$_ReplyDto;

  factory _ReplyDto.fromJson(Map<String, dynamic> json) = _$_ReplyDto.fromJson;

  @override
  String get mid;
  @override
  @JsonKey(readValue: getReplyMid)
  String get reply_to;
  @override
  @JsonKey(ignore: true)
  _$$_ReplyDtoCopyWith<_$_ReplyDto> get copyWith =>
      throw _privateConstructorUsedError;
}
