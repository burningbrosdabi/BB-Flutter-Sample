// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quick_reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuickReply _$QuickReplyFromJson(Map<String, dynamic> json) {
  return _QuickReply.fromJson(json);
}

/// @nodoc
mixin _$QuickReply {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @TimestampConverter()
  int get modified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuickReplyCopyWith<QuickReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickReplyCopyWith<$Res> {
  factory $QuickReplyCopyWith(
          QuickReply value, $Res Function(QuickReply) then) =
      _$QuickReplyCopyWithImpl<$Res>;
  $Res call(
      {int id, String title, String text, @TimestampConverter() int modified});
}

/// @nodoc
class _$QuickReplyCopyWithImpl<$Res> implements $QuickReplyCopyWith<$Res> {
  _$QuickReplyCopyWithImpl(this._value, this._then);

  final QuickReply _value;
  // ignore: unused_field
  final $Res Function(QuickReply) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? modified = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_QuickReplyCopyWith<$Res>
    implements $QuickReplyCopyWith<$Res> {
  factory _$$_QuickReplyCopyWith(
          _$_QuickReply value, $Res Function(_$_QuickReply) then) =
      __$$_QuickReplyCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String title, String text, @TimestampConverter() int modified});
}

/// @nodoc
class __$$_QuickReplyCopyWithImpl<$Res> extends _$QuickReplyCopyWithImpl<$Res>
    implements _$$_QuickReplyCopyWith<$Res> {
  __$$_QuickReplyCopyWithImpl(
      _$_QuickReply _value, $Res Function(_$_QuickReply) _then)
      : super(_value, (v) => _then(v as _$_QuickReply));

  @override
  _$_QuickReply get _value => super._value as _$_QuickReply;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? modified = freezed,
  }) {
    return _then(_$_QuickReply(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_QuickReply implements _QuickReply {
  _$_QuickReply(
      {required this.id,
      required this.title,
      required this.text,
      @TimestampConverter() this.modified = 0});

  factory _$_QuickReply.fromJson(Map<String, dynamic> json) =>
      _$$_QuickReplyFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String text;
  @override
  @JsonKey()
  @TimestampConverter()
  final int modified;

  @override
  String toString() {
    return 'QuickReply(id: $id, title: $title, text: $text, modified: $modified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuickReply &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.modified, modified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(modified));

  @JsonKey(ignore: true)
  @override
  _$$_QuickReplyCopyWith<_$_QuickReply> get copyWith =>
      __$$_QuickReplyCopyWithImpl<_$_QuickReply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuickReplyToJson(
      this,
    );
  }
}

abstract class _QuickReply implements QuickReply {
  factory _QuickReply(
      {required final int id,
      required final String title,
      required final String text,
      @TimestampConverter() final int modified}) = _$_QuickReply;

  factory _QuickReply.fromJson(Map<String, dynamic> json) =
      _$_QuickReply.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get text;
  @override
  @TimestampConverter()
  int get modified;
  @override
  @JsonKey(ignore: true)
  _$$_QuickReplyCopyWith<_$_QuickReply> get copyWith =>
      throw _privateConstructorUsedError;
}
