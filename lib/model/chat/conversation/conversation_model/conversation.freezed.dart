// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return _Conversation.fromJson(json);
}

/// @nodoc
mixin _$Conversation {
  String get id => throw _privateConstructorUsedError;
  String get created_time => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  From get from => throw _privateConstructorUsedError;
  @JsonKey(readValue: Conversation.readAttachments)
  List<Attachment>? get attachments => throw _privateConstructorUsedError;
  @JsonKey(name: 'shares', readValue: Conversation.parseShare)
  Share? get share => throw _privateConstructorUsedError;
  @JsonKey(readValue: Conversation.readReply)
  String? get reply_to => throw _privateConstructorUsedError;
  @JsonKey(readValue: Conversation.parseStory)
  Story? get story => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String created_time,
      String? message,
      From from,
      @JsonKey(readValue: Conversation.readAttachments)
          List<Attachment>? attachments,
      @JsonKey(name: 'shares', readValue: Conversation.parseShare)
          Share? share,
      @JsonKey(readValue: Conversation.readReply)
          String? reply_to,
      @JsonKey(readValue: Conversation.parseStory)
          Story? story});

  $FromCopyWith<$Res> get from;
  $ShareCopyWith<$Res>? get share;
  $StoryCopyWith<$Res>? get story;
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res> implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  final Conversation _value;
  // ignore: unused_field
  final $Res Function(Conversation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? created_time = freezed,
    Object? message = freezed,
    Object? from = freezed,
    Object? attachments = freezed,
    Object? share = freezed,
    Object? reply_to = freezed,
    Object? story = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_time: created_time == freezed
          ? _value.created_time
          : created_time // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as From,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      share: share == freezed
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as Share?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
    ));
  }

  @override
  $FromCopyWith<$Res> get from {
    return $FromCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $ShareCopyWith<$Res>? get share {
    if (_value.share == null) {
      return null;
    }

    return $ShareCopyWith<$Res>(_value.share!, (value) {
      return _then(_value.copyWith(share: value));
    });
  }

  @override
  $StoryCopyWith<$Res>? get story {
    if (_value.story == null) {
      return null;
    }

    return $StoryCopyWith<$Res>(_value.story!, (value) {
      return _then(_value.copyWith(story: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConversationCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$_ConversationCopyWith(
          _$_Conversation value, $Res Function(_$_Conversation) then) =
      __$$_ConversationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String created_time,
      String? message,
      From from,
      @JsonKey(readValue: Conversation.readAttachments)
          List<Attachment>? attachments,
      @JsonKey(name: 'shares', readValue: Conversation.parseShare)
          Share? share,
      @JsonKey(readValue: Conversation.readReply)
          String? reply_to,
      @JsonKey(readValue: Conversation.parseStory)
          Story? story});

  @override
  $FromCopyWith<$Res> get from;
  @override
  $ShareCopyWith<$Res>? get share;
  @override
  $StoryCopyWith<$Res>? get story;
}

/// @nodoc
class __$$_ConversationCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res>
    implements _$$_ConversationCopyWith<$Res> {
  __$$_ConversationCopyWithImpl(
      _$_Conversation _value, $Res Function(_$_Conversation) _then)
      : super(_value, (v) => _then(v as _$_Conversation));

  @override
  _$_Conversation get _value => super._value as _$_Conversation;

  @override
  $Res call({
    Object? id = freezed,
    Object? created_time = freezed,
    Object? message = freezed,
    Object? from = freezed,
    Object? attachments = freezed,
    Object? share = freezed,
    Object? reply_to = freezed,
    Object? story = freezed,
  }) {
    return _then(_$_Conversation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_time: created_time == freezed
          ? _value.created_time
          : created_time // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as From,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      share: share == freezed
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as Share?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_Conversation extends _Conversation {
  const _$_Conversation(
      {required this.id,
      required this.created_time,
      this.message,
      required this.from,
      @JsonKey(readValue: Conversation.readAttachments)
          final List<Attachment>? attachments,
      @JsonKey(name: 'shares', readValue: Conversation.parseShare)
          this.share,
      @JsonKey(readValue: Conversation.readReply)
          this.reply_to,
      @JsonKey(readValue: Conversation.parseStory)
          this.story})
      : _attachments = attachments,
        super._();

  factory _$_Conversation.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationFromJson(json);

  @override
  final String id;
  @override
  final String created_time;
  @override
  final String? message;
  @override
  final From from;
  final List<Attachment>? _attachments;
  @override
  @JsonKey(readValue: Conversation.readAttachments)
  List<Attachment>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'shares', readValue: Conversation.parseShare)
  final Share? share;
  @override
  @JsonKey(readValue: Conversation.readReply)
  final String? reply_to;
  @override
  @JsonKey(readValue: Conversation.parseStory)
  final Story? story;

  @override
  String toString() {
    return 'Conversation(id: $id, created_time: $created_time, message: $message, from: $from, attachments: $attachments, share: $share, reply_to: $reply_to, story: $story)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Conversation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.created_time, created_time) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other.share, share) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to) &&
            const DeepCollectionEquality().equals(other.story, story));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(created_time),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(share),
      const DeepCollectionEquality().hash(reply_to),
      const DeepCollectionEquality().hash(story));

  @JsonKey(ignore: true)
  @override
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      __$$_ConversationCopyWithImpl<_$_Conversation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationToJson(
      this,
    );
  }
}

abstract class _Conversation extends Conversation {
  const factory _Conversation(
      {required final String id,
      required final String created_time,
      final String? message,
      required final From from,
      @JsonKey(readValue: Conversation.readAttachments)
          final List<Attachment>? attachments,
      @JsonKey(name: 'shares', readValue: Conversation.parseShare)
          final Share? share,
      @JsonKey(readValue: Conversation.readReply)
          final String? reply_to,
      @JsonKey(readValue: Conversation.parseStory)
          final Story? story}) = _$_Conversation;
  const _Conversation._() : super._();

  factory _Conversation.fromJson(Map<String, dynamic> json) =
      _$_Conversation.fromJson;

  @override
  String get id;
  @override
  String get created_time;
  @override
  String? get message;
  @override
  From get from;
  @override
  @JsonKey(readValue: Conversation.readAttachments)
  List<Attachment>? get attachments;
  @override
  @JsonKey(name: 'shares', readValue: Conversation.parseShare)
  Share? get share;
  @override
  @JsonKey(readValue: Conversation.readReply)
  String? get reply_to;
  @override
  @JsonKey(readValue: Conversation.parseStory)
  Story? get story;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}
