// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_conversation_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteConversationMessage _$RemoteConversationMessageFromJson(
    Map<String, dynamic> json) {
  return _RemoteConversationMessage.fromJson(json);
}

/// @nodoc
mixin _$RemoteConversationMessage {
  @JsonKey(fromJson: RemoteConversationMessage.isDeleteFromJson)
  bool get is_delete => throw _privateConstructorUsedError;
  @JsonKey(name: 'mid')
  String get mid => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(readValue: RemoteConversationMessage.readAttachments)
  List<RemoteMessageAttachment>? get attachments =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: RemoteConversationMessage.parseSender)
  String? get sender => throw _privateConstructorUsedError;
  @JsonKey(fromJson: RemoteConversationMessage.parseReply)
  RemoteMessageReply? get reply_to => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteConversationMessageCopyWith<RemoteConversationMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConversationMessageCopyWith<$Res> {
  factory $RemoteConversationMessageCopyWith(RemoteConversationMessage value,
          $Res Function(RemoteConversationMessage) then) =
      _$RemoteConversationMessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: RemoteConversationMessage.isDeleteFromJson)
          bool is_delete,
      @JsonKey(name: 'mid')
          String mid,
      String? text,
      @JsonKey(readValue: RemoteConversationMessage.readAttachments)
          List<RemoteMessageAttachment>? attachments,
      @JsonKey(fromJson: RemoteConversationMessage.parseSender)
          String? sender,
      @JsonKey(fromJson: RemoteConversationMessage.parseReply)
          RemoteMessageReply? reply_to});

  $RemoteMessageReplyCopyWith<$Res>? get reply_to;
}

/// @nodoc
class _$RemoteConversationMessageCopyWithImpl<$Res>
    implements $RemoteConversationMessageCopyWith<$Res> {
  _$RemoteConversationMessageCopyWithImpl(this._value, this._then);

  final RemoteConversationMessage _value;
  // ignore: unused_field
  final $Res Function(RemoteConversationMessage) _then;

  @override
  $Res call({
    Object? is_delete = freezed,
    Object? mid = freezed,
    Object? text = freezed,
    Object? attachments = freezed,
    Object? sender = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_value.copyWith(
      is_delete: is_delete == freezed
          ? _value.is_delete
          : is_delete // ignore: cast_nullable_to_non_nullable
              as bool,
      mid: mid == freezed
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<RemoteMessageAttachment>?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as RemoteMessageReply?,
    ));
  }

  @override
  $RemoteMessageReplyCopyWith<$Res>? get reply_to {
    if (_value.reply_to == null) {
      return null;
    }

    return $RemoteMessageReplyCopyWith<$Res>(_value.reply_to!, (value) {
      return _then(_value.copyWith(reply_to: value));
    });
  }
}

/// @nodoc
abstract class _$$_RemoteConversationMessageCopyWith<$Res>
    implements $RemoteConversationMessageCopyWith<$Res> {
  factory _$$_RemoteConversationMessageCopyWith(
          _$_RemoteConversationMessage value,
          $Res Function(_$_RemoteConversationMessage) then) =
      __$$_RemoteConversationMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: RemoteConversationMessage.isDeleteFromJson)
          bool is_delete,
      @JsonKey(name: 'mid')
          String mid,
      String? text,
      @JsonKey(readValue: RemoteConversationMessage.readAttachments)
          List<RemoteMessageAttachment>? attachments,
      @JsonKey(fromJson: RemoteConversationMessage.parseSender)
          String? sender,
      @JsonKey(fromJson: RemoteConversationMessage.parseReply)
          RemoteMessageReply? reply_to});

  @override
  $RemoteMessageReplyCopyWith<$Res>? get reply_to;
}

/// @nodoc
class __$$_RemoteConversationMessageCopyWithImpl<$Res>
    extends _$RemoteConversationMessageCopyWithImpl<$Res>
    implements _$$_RemoteConversationMessageCopyWith<$Res> {
  __$$_RemoteConversationMessageCopyWithImpl(
      _$_RemoteConversationMessage _value,
      $Res Function(_$_RemoteConversationMessage) _then)
      : super(_value, (v) => _then(v as _$_RemoteConversationMessage));

  @override
  _$_RemoteConversationMessage get _value =>
      super._value as _$_RemoteConversationMessage;

  @override
  $Res call({
    Object? is_delete = freezed,
    Object? mid = freezed,
    Object? text = freezed,
    Object? attachments = freezed,
    Object? sender = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_$_RemoteConversationMessage(
      is_delete: is_delete == freezed
          ? _value.is_delete
          : is_delete // ignore: cast_nullable_to_non_nullable
              as bool,
      mid: mid == freezed
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<RemoteMessageAttachment>?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as RemoteMessageReply?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RemoteConversationMessage extends _RemoteConversationMessage {
  _$_RemoteConversationMessage(
      {@JsonKey(fromJson: RemoteConversationMessage.isDeleteFromJson)
          this.is_delete = false,
      @JsonKey(name: 'mid')
          required this.mid,
      this.text,
      @JsonKey(readValue: RemoteConversationMessage.readAttachments)
          final List<RemoteMessageAttachment>? attachments,
      @JsonKey(fromJson: RemoteConversationMessage.parseSender)
          this.sender,
      @JsonKey(fromJson: RemoteConversationMessage.parseReply)
          this.reply_to})
      : _attachments = attachments,
        super._();

  factory _$_RemoteConversationMessage.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteConversationMessageFromJson(json);

  @override
  @JsonKey(fromJson: RemoteConversationMessage.isDeleteFromJson)
  final bool is_delete;
  @override
  @JsonKey(name: 'mid')
  final String mid;
  @override
  final String? text;
  final List<RemoteMessageAttachment>? _attachments;
  @override
  @JsonKey(readValue: RemoteConversationMessage.readAttachments)
  List<RemoteMessageAttachment>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: RemoteConversationMessage.parseSender)
  final String? sender;
  @override
  @JsonKey(fromJson: RemoteConversationMessage.parseReply)
  final RemoteMessageReply? reply_to;

  @override
  String toString() {
    return 'RemoteConversationMessage(is_delete: $is_delete, mid: $mid, text: $text, attachments: $attachments, sender: $sender, reply_to: $reply_to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteConversationMessage &&
            const DeepCollectionEquality().equals(other.is_delete, is_delete) &&
            const DeepCollectionEquality().equals(other.mid, mid) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(is_delete),
      const DeepCollectionEquality().hash(mid),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(reply_to));

  @JsonKey(ignore: true)
  @override
  _$$_RemoteConversationMessageCopyWith<_$_RemoteConversationMessage>
      get copyWith => __$$_RemoteConversationMessageCopyWithImpl<
          _$_RemoteConversationMessage>(this, _$identity);
}

abstract class _RemoteConversationMessage extends RemoteConversationMessage {
  factory _RemoteConversationMessage(
      {@JsonKey(fromJson: RemoteConversationMessage.isDeleteFromJson)
          final bool is_delete,
      @JsonKey(name: 'mid')
          required final String mid,
      final String? text,
      @JsonKey(readValue: RemoteConversationMessage.readAttachments)
          final List<RemoteMessageAttachment>? attachments,
      @JsonKey(fromJson: RemoteConversationMessage.parseSender)
          final String? sender,
      @JsonKey(fromJson: RemoteConversationMessage.parseReply)
          final RemoteMessageReply? reply_to}) = _$_RemoteConversationMessage;
  _RemoteConversationMessage._() : super._();

  factory _RemoteConversationMessage.fromJson(Map<String, dynamic> json) =
      _$_RemoteConversationMessage.fromJson;

  @override
  @JsonKey(fromJson: RemoteConversationMessage.isDeleteFromJson)
  bool get is_delete;
  @override
  @JsonKey(name: 'mid')
  String get mid;
  @override
  String? get text;
  @override
  @JsonKey(readValue: RemoteConversationMessage.readAttachments)
  List<RemoteMessageAttachment>? get attachments;
  @override
  @JsonKey(fromJson: RemoteConversationMessage.parseSender)
  String? get sender;
  @override
  @JsonKey(fromJson: RemoteConversationMessage.parseReply)
  RemoteMessageReply? get reply_to;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteConversationMessageCopyWith<_$_RemoteConversationMessage>
      get copyWith => throw _privateConstructorUsedError;
}
