// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  String get url => throw _privateConstructorUsedError;
  int? get sticker_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res>;
  $Res call({String url, int? sticker_id});
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res> implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  final Payload _value;
  // ignore: unused_field
  final $Res Function(Payload) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? sticker_id = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      sticker_id: sticker_id == freezed
          ? _value.sticker_id
          : sticker_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$$_PayloadCopyWith(
          _$_Payload value, $Res Function(_$_Payload) then) =
      __$$_PayloadCopyWithImpl<$Res>;
  @override
  $Res call({String url, int? sticker_id});
}

/// @nodoc
class __$$_PayloadCopyWithImpl<$Res> extends _$PayloadCopyWithImpl<$Res>
    implements _$$_PayloadCopyWith<$Res> {
  __$$_PayloadCopyWithImpl(_$_Payload _value, $Res Function(_$_Payload) _then)
      : super(_value, (v) => _then(v as _$_Payload));

  @override
  _$_Payload get _value => super._value as _$_Payload;

  @override
  $Res call({
    Object? url = freezed,
    Object? sticker_id = freezed,
  }) {
    return _then(_$_Payload(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      sticker_id: sticker_id == freezed
          ? _value.sticker_id
          : sticker_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_Payload extends _Payload {
  _$_Payload({required this.url, this.sticker_id}) : super._();

  factory _$_Payload.fromJson(Map<String, dynamic> json) =>
      _$$_PayloadFromJson(json);

  @override
  final String url;
  @override
  final int? sticker_id;

  @override
  String toString() {
    return 'Payload(url: $url, sticker_id: $sticker_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payload &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.sticker_id, sticker_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(sticker_id));

  @JsonKey(ignore: true)
  @override
  _$$_PayloadCopyWith<_$_Payload> get copyWith =>
      __$$_PayloadCopyWithImpl<_$_Payload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayloadToJson(
      this,
    );
  }
}

abstract class _Payload extends Payload {
  factory _Payload({required final String url, final int? sticker_id}) =
      _$_Payload;
  _Payload._() : super._();

  factory _Payload.fromJson(Map<String, dynamic> json) = _$_Payload.fromJson;

  @override
  String get url;
  @override
  int? get sticker_id;
  @override
  @JsonKey(ignore: true)
  _$$_PayloadCopyWith<_$_Payload> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoteMessageAttachment _$RemoteMessageAttachmentFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'image':
      return _ImageRemoteMessageAttachment.fromJson(json);
    case 'video':
      return _VideoRemoteMessageAttachment.fromJson(json);
    case 'story_mention':
      return _StoryMentionRemoteMessageAttachment.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'RemoteMessageAttachment',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$RemoteMessageAttachment {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payload payload) image,
    required TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)
        video,
    required TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)
        storyMention,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Payload payload)? image,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        video,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        storyMention,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Payload payload)? image,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        video,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        storyMention,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageRemoteMessageAttachment value) image,
    required TResult Function(_VideoRemoteMessageAttachment value) video,
    required TResult Function(_StoryMentionRemoteMessageAttachment value)
        storyMention,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageRemoteMessageAttachment value)? image,
    TResult Function(_VideoRemoteMessageAttachment value)? video,
    TResult Function(_StoryMentionRemoteMessageAttachment value)? storyMention,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageRemoteMessageAttachment value)? image,
    TResult Function(_VideoRemoteMessageAttachment value)? video,
    TResult Function(_StoryMentionRemoteMessageAttachment value)? storyMention,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteMessageAttachmentCopyWith<$Res> {
  factory $RemoteMessageAttachmentCopyWith(RemoteMessageAttachment value,
          $Res Function(RemoteMessageAttachment) then) =
      _$RemoteMessageAttachmentCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoteMessageAttachmentCopyWithImpl<$Res>
    implements $RemoteMessageAttachmentCopyWith<$Res> {
  _$RemoteMessageAttachmentCopyWithImpl(this._value, this._then);

  final RemoteMessageAttachment _value;
  // ignore: unused_field
  final $Res Function(RemoteMessageAttachment) _then;
}

/// @nodoc
abstract class _$$_ImageRemoteMessageAttachmentCopyWith<$Res> {
  factory _$$_ImageRemoteMessageAttachmentCopyWith(
          _$_ImageRemoteMessageAttachment value,
          $Res Function(_$_ImageRemoteMessageAttachment) then) =
      __$$_ImageRemoteMessageAttachmentCopyWithImpl<$Res>;
  $Res call({Payload payload});

  $PayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_ImageRemoteMessageAttachmentCopyWithImpl<$Res>
    extends _$RemoteMessageAttachmentCopyWithImpl<$Res>
    implements _$$_ImageRemoteMessageAttachmentCopyWith<$Res> {
  __$$_ImageRemoteMessageAttachmentCopyWithImpl(
      _$_ImageRemoteMessageAttachment _value,
      $Res Function(_$_ImageRemoteMessageAttachment) _then)
      : super(_value, (v) => _then(v as _$_ImageRemoteMessageAttachment));

  @override
  _$_ImageRemoteMessageAttachment get _value =>
      super._value as _$_ImageRemoteMessageAttachment;

  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_$_ImageRemoteMessageAttachment(
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload,
    ));
  }

  @override
  $PayloadCopyWith<$Res> get payload {
    return $PayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_ImageRemoteMessageAttachment extends _ImageRemoteMessageAttachment {
  const _$_ImageRemoteMessageAttachment(
      {required this.payload, final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$_ImageRemoteMessageAttachment.fromJson(Map<String, dynamic> json) =>
      _$$_ImageRemoteMessageAttachmentFromJson(json);

  @override
  final Payload payload;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'RemoteMessageAttachment.image(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageRemoteMessageAttachment &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$_ImageRemoteMessageAttachmentCopyWith<_$_ImageRemoteMessageAttachment>
      get copyWith => __$$_ImageRemoteMessageAttachmentCopyWithImpl<
          _$_ImageRemoteMessageAttachment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payload payload) image,
    required TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)
        video,
    required TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)
        storyMention,
  }) {
    return image(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Payload payload)? image,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        video,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        storyMention,
  }) {
    return image?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Payload payload)? image,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        video,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        storyMention,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageRemoteMessageAttachment value) image,
    required TResult Function(_VideoRemoteMessageAttachment value) video,
    required TResult Function(_StoryMentionRemoteMessageAttachment value)
        storyMention,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageRemoteMessageAttachment value)? image,
    TResult Function(_VideoRemoteMessageAttachment value)? video,
    TResult Function(_StoryMentionRemoteMessageAttachment value)? storyMention,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageRemoteMessageAttachment value)? image,
    TResult Function(_VideoRemoteMessageAttachment value)? video,
    TResult Function(_StoryMentionRemoteMessageAttachment value)? storyMention,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class _ImageRemoteMessageAttachment extends RemoteMessageAttachment {
  const factory _ImageRemoteMessageAttachment(
      {required final Payload payload}) = _$_ImageRemoteMessageAttachment;
  const _ImageRemoteMessageAttachment._() : super._();

  factory _ImageRemoteMessageAttachment.fromJson(Map<String, dynamic> json) =
      _$_ImageRemoteMessageAttachment.fromJson;

  Payload get payload;
  @JsonKey(ignore: true)
  _$$_ImageRemoteMessageAttachmentCopyWith<_$_ImageRemoteMessageAttachment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VideoRemoteMessageAttachmentCopyWith<$Res> {
  factory _$$_VideoRemoteMessageAttachmentCopyWith(
          _$_VideoRemoteMessageAttachment value,
          $Res Function(_$_VideoRemoteMessageAttachment) then) =
      __$$_VideoRemoteMessageAttachmentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
          String url});
}

/// @nodoc
class __$$_VideoRemoteMessageAttachmentCopyWithImpl<$Res>
    extends _$RemoteMessageAttachmentCopyWithImpl<$Res>
    implements _$$_VideoRemoteMessageAttachmentCopyWith<$Res> {
  __$$_VideoRemoteMessageAttachmentCopyWithImpl(
      _$_VideoRemoteMessageAttachment _value,
      $Res Function(_$_VideoRemoteMessageAttachment) _then)
      : super(_value, (v) => _then(v as _$_VideoRemoteMessageAttachment));

  @override
  _$_VideoRemoteMessageAttachment get _value =>
      super._value as _$_VideoRemoteMessageAttachment;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_VideoRemoteMessageAttachment(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_VideoRemoteMessageAttachment extends _VideoRemoteMessageAttachment {
  const _$_VideoRemoteMessageAttachment(
      {@JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
          required this.url,
      final String? $type})
      : $type = $type ?? 'video',
        super._();

  factory _$_VideoRemoteMessageAttachment.fromJson(Map<String, dynamic> json) =>
      _$$_VideoRemoteMessageAttachmentFromJson(json);

  @override
  @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
  final String url;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'RemoteMessageAttachment.video(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoRemoteMessageAttachment &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_VideoRemoteMessageAttachmentCopyWith<_$_VideoRemoteMessageAttachment>
      get copyWith => __$$_VideoRemoteMessageAttachmentCopyWithImpl<
          _$_VideoRemoteMessageAttachment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payload payload) image,
    required TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)
        video,
    required TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)
        storyMention,
  }) {
    return video(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Payload payload)? image,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        video,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        storyMention,
  }) {
    return video?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Payload payload)? image,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        video,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        storyMention,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageRemoteMessageAttachment value) image,
    required TResult Function(_VideoRemoteMessageAttachment value) video,
    required TResult Function(_StoryMentionRemoteMessageAttachment value)
        storyMention,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageRemoteMessageAttachment value)? image,
    TResult Function(_VideoRemoteMessageAttachment value)? video,
    TResult Function(_StoryMentionRemoteMessageAttachment value)? storyMention,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageRemoteMessageAttachment value)? image,
    TResult Function(_VideoRemoteMessageAttachment value)? video,
    TResult Function(_StoryMentionRemoteMessageAttachment value)? storyMention,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }
}

abstract class _VideoRemoteMessageAttachment extends RemoteMessageAttachment {
  const factory _VideoRemoteMessageAttachment(
      {@JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
          required final String url}) = _$_VideoRemoteMessageAttachment;
  const _VideoRemoteMessageAttachment._() : super._();

  factory _VideoRemoteMessageAttachment.fromJson(Map<String, dynamic> json) =
      _$_VideoRemoteMessageAttachment.fromJson;

  @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
  String get url;
  @JsonKey(ignore: true)
  _$$_VideoRemoteMessageAttachmentCopyWith<_$_VideoRemoteMessageAttachment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StoryMentionRemoteMessageAttachmentCopyWith<$Res> {
  factory _$$_StoryMentionRemoteMessageAttachmentCopyWith(
          _$_StoryMentionRemoteMessageAttachment value,
          $Res Function(_$_StoryMentionRemoteMessageAttachment) then) =
      __$$_StoryMentionRemoteMessageAttachmentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
          String url});
}

/// @nodoc
class __$$_StoryMentionRemoteMessageAttachmentCopyWithImpl<$Res>
    extends _$RemoteMessageAttachmentCopyWithImpl<$Res>
    implements _$$_StoryMentionRemoteMessageAttachmentCopyWith<$Res> {
  __$$_StoryMentionRemoteMessageAttachmentCopyWithImpl(
      _$_StoryMentionRemoteMessageAttachment _value,
      $Res Function(_$_StoryMentionRemoteMessageAttachment) _then)
      : super(
            _value, (v) => _then(v as _$_StoryMentionRemoteMessageAttachment));

  @override
  _$_StoryMentionRemoteMessageAttachment get _value =>
      super._value as _$_StoryMentionRemoteMessageAttachment;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_StoryMentionRemoteMessageAttachment(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_StoryMentionRemoteMessageAttachment
    extends _StoryMentionRemoteMessageAttachment {
  const _$_StoryMentionRemoteMessageAttachment(
      {@JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
          required this.url,
      final String? $type})
      : $type = $type ?? 'story_mention',
        super._();

  factory _$_StoryMentionRemoteMessageAttachment.fromJson(
          Map<String, dynamic> json) =>
      _$$_StoryMentionRemoteMessageAttachmentFromJson(json);

  @override
  @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
  final String url;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'RemoteMessageAttachment.storyMention(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryMentionRemoteMessageAttachment &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_StoryMentionRemoteMessageAttachmentCopyWith<
          _$_StoryMentionRemoteMessageAttachment>
      get copyWith => __$$_StoryMentionRemoteMessageAttachmentCopyWithImpl<
          _$_StoryMentionRemoteMessageAttachment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payload payload) image,
    required TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)
        video,
    required TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)
        storyMention,
  }) {
    return storyMention(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Payload payload)? image,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        video,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        storyMention,
  }) {
    return storyMention?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Payload payload)? image,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        video,
    TResult Function(
            @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
                String url)?
        storyMention,
    required TResult orElse(),
  }) {
    if (storyMention != null) {
      return storyMention(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageRemoteMessageAttachment value) image,
    required TResult Function(_VideoRemoteMessageAttachment value) video,
    required TResult Function(_StoryMentionRemoteMessageAttachment value)
        storyMention,
  }) {
    return storyMention(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageRemoteMessageAttachment value)? image,
    TResult Function(_VideoRemoteMessageAttachment value)? video,
    TResult Function(_StoryMentionRemoteMessageAttachment value)? storyMention,
  }) {
    return storyMention?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageRemoteMessageAttachment value)? image,
    TResult Function(_VideoRemoteMessageAttachment value)? video,
    TResult Function(_StoryMentionRemoteMessageAttachment value)? storyMention,
    required TResult orElse(),
  }) {
    if (storyMention != null) {
      return storyMention(this);
    }
    return orElse();
  }
}

abstract class _StoryMentionRemoteMessageAttachment
    extends RemoteMessageAttachment {
  const factory _StoryMentionRemoteMessageAttachment(
      {@JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
          required final String url}) = _$_StoryMentionRemoteMessageAttachment;
  const _StoryMentionRemoteMessageAttachment._() : super._();

  factory _StoryMentionRemoteMessageAttachment.fromJson(
          Map<String, dynamic> json) =
      _$_StoryMentionRemoteMessageAttachment.fromJson;

  @JsonKey(name: 'payload', fromJson: RemoteMessageAttachment.parsePayload)
  String get url;
  @JsonKey(ignore: true)
  _$$_StoryMentionRemoteMessageAttachmentCopyWith<
          _$_StoryMentionRemoteMessageAttachment>
      get copyWith => throw _privateConstructorUsedError;
}
