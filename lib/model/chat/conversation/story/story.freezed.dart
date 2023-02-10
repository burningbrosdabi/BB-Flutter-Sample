// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Story _$StoryFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'reply':
      return StoryReply.fromJson(json);
    case 'mention':
      return StoryMention.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Story', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Story {
  String? get link => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? link, String? text) reply,
    required TResult Function(String? link, String? text) mention,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? link, String? text)? reply,
    TResult Function(String? link, String? text)? mention,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? link, String? text)? reply,
    TResult Function(String? link, String? text)? mention,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryReply value) reply,
    required TResult Function(StoryMention value) mention,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoryReply value)? reply,
    TResult Function(StoryMention value)? mention,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryReply value)? reply,
    TResult Function(StoryMention value)? mention,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res>;
  $Res call({String? link, String? text});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res> implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  final Story _value;
  // ignore: unused_field
  final $Res Function(Story) _then;

  @override
  $Res call({
    Object? link = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$StoryReplyCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$$StoryReplyCopyWith(
          _$StoryReply value, $Res Function(_$StoryReply) then) =
      __$$StoryReplyCopyWithImpl<$Res>;
  @override
  $Res call({String? link, String? text});
}

/// @nodoc
class __$$StoryReplyCopyWithImpl<$Res> extends _$StoryCopyWithImpl<$Res>
    implements _$$StoryReplyCopyWith<$Res> {
  __$$StoryReplyCopyWithImpl(
      _$StoryReply _value, $Res Function(_$StoryReply) _then)
      : super(_value, (v) => _then(v as _$StoryReply));

  @override
  _$StoryReply get _value => super._value as _$StoryReply;

  @override
  $Res call({
    Object? link = freezed,
    Object? text = freezed,
  }) {
    return _then(_$StoryReply(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$StoryReply extends StoryReply {
  _$StoryReply({required this.link, this.text, final String? $type})
      : $type = $type ?? 'reply',
        super._();

  factory _$StoryReply.fromJson(Map<String, dynamic> json) =>
      _$$StoryReplyFromJson(json);

  @override
  final String? link;
  @override
  final String? text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Story.reply(link: $link, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryReply &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$StoryReplyCopyWith<_$StoryReply> get copyWith =>
      __$$StoryReplyCopyWithImpl<_$StoryReply>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? link, String? text) reply,
    required TResult Function(String? link, String? text) mention,
  }) {
    return reply(link, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? link, String? text)? reply,
    TResult Function(String? link, String? text)? mention,
  }) {
    return reply?.call(link, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? link, String? text)? reply,
    TResult Function(String? link, String? text)? mention,
    required TResult orElse(),
  }) {
    if (reply != null) {
      return reply(link, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryReply value) reply,
    required TResult Function(StoryMention value) mention,
  }) {
    return reply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoryReply value)? reply,
    TResult Function(StoryMention value)? mention,
  }) {
    return reply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryReply value)? reply,
    TResult Function(StoryMention value)? mention,
    required TResult orElse(),
  }) {
    if (reply != null) {
      return reply(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryReplyToJson(
      this,
    );
  }
}

abstract class StoryReply extends Story {
  factory StoryReply({required final String? link, final String? text}) =
      _$StoryReply;
  StoryReply._() : super._();

  factory StoryReply.fromJson(Map<String, dynamic> json) =
      _$StoryReply.fromJson;

  @override
  String? get link;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$StoryReplyCopyWith<_$StoryReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoryMentionCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$$StoryMentionCopyWith(
          _$StoryMention value, $Res Function(_$StoryMention) then) =
      __$$StoryMentionCopyWithImpl<$Res>;
  @override
  $Res call({String? link, String? text});
}

/// @nodoc
class __$$StoryMentionCopyWithImpl<$Res> extends _$StoryCopyWithImpl<$Res>
    implements _$$StoryMentionCopyWith<$Res> {
  __$$StoryMentionCopyWithImpl(
      _$StoryMention _value, $Res Function(_$StoryMention) _then)
      : super(_value, (v) => _then(v as _$StoryMention));

  @override
  _$StoryMention get _value => super._value as _$StoryMention;

  @override
  $Res call({
    Object? link = freezed,
    Object? text = freezed,
  }) {
    return _then(_$StoryMention(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$StoryMention extends StoryMention {
  _$StoryMention({required this.link, this.text, final String? $type})
      : $type = $type ?? 'mention',
        super._();

  factory _$StoryMention.fromJson(Map<String, dynamic> json) =>
      _$$StoryMentionFromJson(json);

  @override
  final String? link;
  @override
  final String? text;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Story.mention(link: $link, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryMention &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$StoryMentionCopyWith<_$StoryMention> get copyWith =>
      __$$StoryMentionCopyWithImpl<_$StoryMention>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? link, String? text) reply,
    required TResult Function(String? link, String? text) mention,
  }) {
    return mention(link, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? link, String? text)? reply,
    TResult Function(String? link, String? text)? mention,
  }) {
    return mention?.call(link, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? link, String? text)? reply,
    TResult Function(String? link, String? text)? mention,
    required TResult orElse(),
  }) {
    if (mention != null) {
      return mention(link, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryReply value) reply,
    required TResult Function(StoryMention value) mention,
  }) {
    return mention(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoryReply value)? reply,
    TResult Function(StoryMention value)? mention,
  }) {
    return mention?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryReply value)? reply,
    TResult Function(StoryMention value)? mention,
    required TResult orElse(),
  }) {
    if (mention != null) {
      return mention(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryMentionToJson(
      this,
    );
  }
}

abstract class StoryMention extends Story {
  factory StoryMention({required final String? link, final String? text}) =
      _$StoryMention;
  StoryMention._() : super._();

  factory StoryMention.fromJson(Map<String, dynamic> json) =
      _$StoryMention.fromJson;

  @override
  String? get link;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$StoryMentionCopyWith<_$StoryMention> get copyWith =>
      throw _privateConstructorUsedError;
}
