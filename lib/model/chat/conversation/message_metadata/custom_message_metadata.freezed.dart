// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'custom_message_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageMetadata _$MessageMetadataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _MessageMetadata.fromJson(json);
    case 'video':
      return VideoMetadata.fromJson(json);
    case 'image':
      return ImageMetadata.fromJson(json);
    case 'attachments':
      return AttachmentsMetadata.fromJson(json);
    case 'share':
      return ShareMetadata.fromJson(json);
    case 'story':
      return StoryMetadata.fromJson(json);
    case 'owner_request':
      return OwnerRequestMetadata.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MessageMetadata',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MessageMetadata {
  MeaningfulException? get error => throw _privateConstructorUsedError;
  String? get reply_to => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to) $default, {
    required TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)
        video,
    required TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)
        image,
    required TResult Function(List<Attachment> attachments,
            MeaningfulException? error, String? reply_to)
        attachments,
    required TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)
        share,
    required TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)
        story,
    required TResult Function(MeaningfulException? error, String? reply_to)
        owner_request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessageMetadata value) $default, {
    required TResult Function(VideoMetadata value) video,
    required TResult Function(ImageMetadata value) image,
    required TResult Function(AttachmentsMetadata value) attachments,
    required TResult Function(ShareMetadata value) share,
    required TResult Function(StoryMetadata value) story,
    required TResult Function(OwnerRequestMetadata value) owner_request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageMetadataCopyWith<MessageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageMetadataCopyWith<$Res> {
  factory $MessageMetadataCopyWith(
          MessageMetadata value, $Res Function(MessageMetadata) then) =
      _$MessageMetadataCopyWithImpl<$Res>;
  $Res call({MeaningfulException? error, String? reply_to});

  $MeaningfulExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class _$MessageMetadataCopyWithImpl<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  _$MessageMetadataCopyWithImpl(this._value, this._then);

  final MessageMetadata _value;
  // ignore: unused_field
  final $Res Function(MessageMetadata) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MeaningfulException?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $MeaningfulExceptionCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $MeaningfulExceptionCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$$_MessageMetadataCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$$_MessageMetadataCopyWith(
          _$_MessageMetadata value, $Res Function(_$_MessageMetadata) then) =
      __$$_MessageMetadataCopyWithImpl<$Res>;
  @override
  $Res call({MeaningfulException? error, String? reply_to});

  @override
  $MeaningfulExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_MessageMetadataCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res>
    implements _$$_MessageMetadataCopyWith<$Res> {
  __$$_MessageMetadataCopyWithImpl(
      _$_MessageMetadata _value, $Res Function(_$_MessageMetadata) _then)
      : super(_value, (v) => _then(v as _$_MessageMetadata));

  @override
  _$_MessageMetadata get _value => super._value as _$_MessageMetadata;

  @override
  $Res call({
    Object? error = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_$_MessageMetadata(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MeaningfulException?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_MessageMetadata extends _MessageMetadata {
  const _$_MessageMetadata({this.error, this.reply_to, final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_MessageMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_MessageMetadataFromJson(json);

  @override
  final MeaningfulException? error;
  @override
  final String? reply_to;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageMetadata(error: $error, reply_to: $reply_to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageMetadata &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(reply_to));

  @JsonKey(ignore: true)
  @override
  _$$_MessageMetadataCopyWith<_$_MessageMetadata> get copyWith =>
      __$$_MessageMetadataCopyWithImpl<_$_MessageMetadata>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to) $default, {
    required TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)
        video,
    required TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)
        image,
    required TResult Function(List<Attachment> attachments,
            MeaningfulException? error, String? reply_to)
        attachments,
    required TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)
        share,
    required TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)
        story,
    required TResult Function(MeaningfulException? error, String? reply_to)
        owner_request,
  }) {
    return $default(error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
  }) {
    return $default?.call(error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(error, reply_to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessageMetadata value) $default, {
    required TResult Function(VideoMetadata value) video,
    required TResult Function(ImageMetadata value) image,
    required TResult Function(AttachmentsMetadata value) attachments,
    required TResult Function(ShareMetadata value) share,
    required TResult Function(StoryMetadata value) story,
    required TResult Function(OwnerRequestMetadata value) owner_request,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageMetadataToJson(
      this,
    );
  }
}

abstract class _MessageMetadata extends MessageMetadata {
  const factory _MessageMetadata(
      {final MeaningfulException? error,
      final String? reply_to}) = _$_MessageMetadata;
  const _MessageMetadata._() : super._();

  factory _MessageMetadata.fromJson(Map<String, dynamic> json) =
      _$_MessageMetadata.fromJson;

  @override
  MeaningfulException? get error;
  @override
  String? get reply_to;
  @override
  @JsonKey(ignore: true)
  _$$_MessageMetadataCopyWith<_$_MessageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoMetadataCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$$VideoMetadataCopyWith(
          _$VideoMetadata value, $Res Function(_$VideoMetadata) then) =
      __$$VideoMetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {AttachmentData data, MeaningfulException? error, String? reply_to});

  $AttachmentDataCopyWith<$Res> get data;
  @override
  $MeaningfulExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$VideoMetadataCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res>
    implements _$$VideoMetadataCopyWith<$Res> {
  __$$VideoMetadataCopyWithImpl(
      _$VideoMetadata _value, $Res Function(_$VideoMetadata) _then)
      : super(_value, (v) => _then(v as _$VideoMetadata));

  @override
  _$VideoMetadata get _value => super._value as _$VideoMetadata;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_$VideoMetadata(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AttachmentData,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MeaningfulException?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $AttachmentDataCopyWith<$Res> get data {
    return $AttachmentDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$VideoMetadata extends VideoMetadata {
  const _$VideoMetadata(
      {required this.data, this.error, this.reply_to, final String? $type})
      : $type = $type ?? 'video',
        super._();

  factory _$VideoMetadata.fromJson(Map<String, dynamic> json) =>
      _$$VideoMetadataFromJson(json);

  @override
  final AttachmentData data;
  @override
  final MeaningfulException? error;
  @override
  final String? reply_to;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageMetadata.video(data: $data, error: $error, reply_to: $reply_to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoMetadata &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(reply_to));

  @JsonKey(ignore: true)
  @override
  _$$VideoMetadataCopyWith<_$VideoMetadata> get copyWith =>
      __$$VideoMetadataCopyWithImpl<_$VideoMetadata>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to) $default, {
    required TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)
        video,
    required TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)
        image,
    required TResult Function(List<Attachment> attachments,
            MeaningfulException? error, String? reply_to)
        attachments,
    required TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)
        share,
    required TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)
        story,
    required TResult Function(MeaningfulException? error, String? reply_to)
        owner_request,
  }) {
    return video(data, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
  }) {
    return video?.call(data, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(data, error, reply_to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessageMetadata value) $default, {
    required TResult Function(VideoMetadata value) video,
    required TResult Function(ImageMetadata value) image,
    required TResult Function(AttachmentsMetadata value) attachments,
    required TResult Function(ShareMetadata value) share,
    required TResult Function(StoryMetadata value) story,
    required TResult Function(OwnerRequestMetadata value) owner_request,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoMetadataToJson(
      this,
    );
  }
}

abstract class VideoMetadata extends MessageMetadata {
  const factory VideoMetadata(
      {required final AttachmentData data,
      final MeaningfulException? error,
      final String? reply_to}) = _$VideoMetadata;
  const VideoMetadata._() : super._();

  factory VideoMetadata.fromJson(Map<String, dynamic> json) =
      _$VideoMetadata.fromJson;

  AttachmentData get data;
  @override
  MeaningfulException? get error;
  @override
  String? get reply_to;
  @override
  @JsonKey(ignore: true)
  _$$VideoMetadataCopyWith<_$VideoMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageMetadataCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$$ImageMetadataCopyWith(
          _$ImageMetadata value, $Res Function(_$ImageMetadata) then) =
      __$$ImageMetadataCopyWithImpl<$Res>;
  @override
  $Res call({String origin_url, MeaningfulException? error, String? reply_to});

  @override
  $MeaningfulExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ImageMetadataCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res>
    implements _$$ImageMetadataCopyWith<$Res> {
  __$$ImageMetadataCopyWithImpl(
      _$ImageMetadata _value, $Res Function(_$ImageMetadata) _then)
      : super(_value, (v) => _then(v as _$ImageMetadata));

  @override
  _$ImageMetadata get _value => super._value as _$ImageMetadata;

  @override
  $Res call({
    Object? origin_url = freezed,
    Object? error = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_$ImageMetadata(
      origin_url: origin_url == freezed
          ? _value.origin_url
          : origin_url // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MeaningfulException?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$ImageMetadata extends ImageMetadata {
  const _$ImageMetadata(
      {required this.origin_url,
      this.error,
      this.reply_to,
      final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$ImageMetadata.fromJson(Map<String, dynamic> json) =>
      _$$ImageMetadataFromJson(json);

  @override
  final String origin_url;
  @override
  final MeaningfulException? error;
  @override
  final String? reply_to;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageMetadata.image(origin_url: $origin_url, error: $error, reply_to: $reply_to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageMetadata &&
            const DeepCollectionEquality()
                .equals(other.origin_url, origin_url) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(origin_url),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(reply_to));

  @JsonKey(ignore: true)
  @override
  _$$ImageMetadataCopyWith<_$ImageMetadata> get copyWith =>
      __$$ImageMetadataCopyWithImpl<_$ImageMetadata>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to) $default, {
    required TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)
        video,
    required TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)
        image,
    required TResult Function(List<Attachment> attachments,
            MeaningfulException? error, String? reply_to)
        attachments,
    required TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)
        share,
    required TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)
        story,
    required TResult Function(MeaningfulException? error, String? reply_to)
        owner_request,
  }) {
    return image(origin_url, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
  }) {
    return image?.call(origin_url, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(origin_url, error, reply_to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessageMetadata value) $default, {
    required TResult Function(VideoMetadata value) video,
    required TResult Function(ImageMetadata value) image,
    required TResult Function(AttachmentsMetadata value) attachments,
    required TResult Function(ShareMetadata value) share,
    required TResult Function(StoryMetadata value) story,
    required TResult Function(OwnerRequestMetadata value) owner_request,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageMetadataToJson(
      this,
    );
  }
}

abstract class ImageMetadata extends MessageMetadata {
  const factory ImageMetadata(
      {required final String origin_url,
      final MeaningfulException? error,
      final String? reply_to}) = _$ImageMetadata;
  const ImageMetadata._() : super._();

  factory ImageMetadata.fromJson(Map<String, dynamic> json) =
      _$ImageMetadata.fromJson;

  String get origin_url;
  @override
  MeaningfulException? get error;
  @override
  String? get reply_to;
  @override
  @JsonKey(ignore: true)
  _$$ImageMetadataCopyWith<_$ImageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttachmentsMetadataCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$$AttachmentsMetadataCopyWith(_$AttachmentsMetadata value,
          $Res Function(_$AttachmentsMetadata) then) =
      __$$AttachmentsMetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Attachment> attachments,
      MeaningfulException? error,
      String? reply_to});

  @override
  $MeaningfulExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$AttachmentsMetadataCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res>
    implements _$$AttachmentsMetadataCopyWith<$Res> {
  __$$AttachmentsMetadataCopyWithImpl(
      _$AttachmentsMetadata _value, $Res Function(_$AttachmentsMetadata) _then)
      : super(_value, (v) => _then(v as _$AttachmentsMetadata));

  @override
  _$AttachmentsMetadata get _value => super._value as _$AttachmentsMetadata;

  @override
  $Res call({
    Object? attachments = freezed,
    Object? error = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_$AttachmentsMetadata(
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MeaningfulException?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$AttachmentsMetadata extends AttachmentsMetadata {
  const _$AttachmentsMetadata(
      {required final List<Attachment> attachments,
      this.error,
      this.reply_to,
      final String? $type})
      : _attachments = attachments,
        $type = $type ?? 'attachments',
        super._();

  factory _$AttachmentsMetadata.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentsMetadataFromJson(json);

  final List<Attachment> _attachments;
  @override
  List<Attachment> get attachments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final MeaningfulException? error;
  @override
  final String? reply_to;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageMetadata.attachments(attachments: $attachments, error: $error, reply_to: $reply_to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentsMetadata &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(reply_to));

  @JsonKey(ignore: true)
  @override
  _$$AttachmentsMetadataCopyWith<_$AttachmentsMetadata> get copyWith =>
      __$$AttachmentsMetadataCopyWithImpl<_$AttachmentsMetadata>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to) $default, {
    required TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)
        video,
    required TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)
        image,
    required TResult Function(List<Attachment> attachments,
            MeaningfulException? error, String? reply_to)
        attachments,
    required TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)
        share,
    required TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)
        story,
    required TResult Function(MeaningfulException? error, String? reply_to)
        owner_request,
  }) {
    return attachments(this.attachments, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
  }) {
    return attachments?.call(this.attachments, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
    required TResult orElse(),
  }) {
    if (attachments != null) {
      return attachments(this.attachments, error, reply_to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessageMetadata value) $default, {
    required TResult Function(VideoMetadata value) video,
    required TResult Function(ImageMetadata value) image,
    required TResult Function(AttachmentsMetadata value) attachments,
    required TResult Function(ShareMetadata value) share,
    required TResult Function(StoryMetadata value) story,
    required TResult Function(OwnerRequestMetadata value) owner_request,
  }) {
    return attachments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
  }) {
    return attachments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
    required TResult orElse(),
  }) {
    if (attachments != null) {
      return attachments(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentsMetadataToJson(
      this,
    );
  }
}

abstract class AttachmentsMetadata extends MessageMetadata {
  const factory AttachmentsMetadata(
      {required final List<Attachment> attachments,
      final MeaningfulException? error,
      final String? reply_to}) = _$AttachmentsMetadata;
  const AttachmentsMetadata._() : super._();

  factory AttachmentsMetadata.fromJson(Map<String, dynamic> json) =
      _$AttachmentsMetadata.fromJson;

  List<Attachment> get attachments;
  @override
  MeaningfulException? get error;
  @override
  String? get reply_to;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentsMetadataCopyWith<_$AttachmentsMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareMetadataCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$$ShareMetadataCopyWith(
          _$ShareMetadata value, $Res Function(_$ShareMetadata) then) =
      __$$ShareMetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      bool is_like_sticker,
      MeaningfulException? error,
      String? reply_to});

  @override
  $MeaningfulExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ShareMetadataCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res>
    implements _$$ShareMetadataCopyWith<$Res> {
  __$$ShareMetadataCopyWithImpl(
      _$ShareMetadata _value, $Res Function(_$ShareMetadata) _then)
      : super(_value, (v) => _then(v as _$ShareMetadata));

  @override
  _$ShareMetadata get _value => super._value as _$ShareMetadata;

  @override
  $Res call({
    Object? url = freezed,
    Object? is_like_sticker = freezed,
    Object? error = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_$ShareMetadata(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      is_like_sticker: is_like_sticker == freezed
          ? _value.is_like_sticker
          : is_like_sticker // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MeaningfulException?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$ShareMetadata extends ShareMetadata {
  const _$ShareMetadata(
      {required this.url,
      this.is_like_sticker = false,
      this.error,
      this.reply_to,
      final String? $type})
      : $type = $type ?? 'share',
        super._();

  factory _$ShareMetadata.fromJson(Map<String, dynamic> json) =>
      _$$ShareMetadataFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final bool is_like_sticker;
  @override
  final MeaningfulException? error;
  @override
  final String? reply_to;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageMetadata.share(url: $url, is_like_sticker: $is_like_sticker, error: $error, reply_to: $reply_to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareMetadata &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.is_like_sticker, is_like_sticker) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(is_like_sticker),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(reply_to));

  @JsonKey(ignore: true)
  @override
  _$$ShareMetadataCopyWith<_$ShareMetadata> get copyWith =>
      __$$ShareMetadataCopyWithImpl<_$ShareMetadata>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to) $default, {
    required TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)
        video,
    required TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)
        image,
    required TResult Function(List<Attachment> attachments,
            MeaningfulException? error, String? reply_to)
        attachments,
    required TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)
        share,
    required TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)
        story,
    required TResult Function(MeaningfulException? error, String? reply_to)
        owner_request,
  }) {
    return share(url, is_like_sticker, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
  }) {
    return share?.call(url, is_like_sticker, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(url, is_like_sticker, error, reply_to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessageMetadata value) $default, {
    required TResult Function(VideoMetadata value) video,
    required TResult Function(ImageMetadata value) image,
    required TResult Function(AttachmentsMetadata value) attachments,
    required TResult Function(ShareMetadata value) share,
    required TResult Function(StoryMetadata value) story,
    required TResult Function(OwnerRequestMetadata value) owner_request,
  }) {
    return share(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
  }) {
    return share?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShareMetadataToJson(
      this,
    );
  }
}

abstract class ShareMetadata extends MessageMetadata {
  const factory ShareMetadata(
      {required final String url,
      final bool is_like_sticker,
      final MeaningfulException? error,
      final String? reply_to}) = _$ShareMetadata;
  const ShareMetadata._() : super._();

  factory ShareMetadata.fromJson(Map<String, dynamic> json) =
      _$ShareMetadata.fromJson;

  String get url;
  bool get is_like_sticker;
  @override
  MeaningfulException? get error;
  @override
  String? get reply_to;
  @override
  @JsonKey(ignore: true)
  _$$ShareMetadataCopyWith<_$ShareMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoryMetadataCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$$StoryMetadataCopyWith(
          _$StoryMetadata value, $Res Function(_$StoryMetadata) then) =
      __$$StoryMetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? url,
      String? text,
      String title,
      MeaningfulException? error,
      String? reply_to});

  @override
  $MeaningfulExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$StoryMetadataCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res>
    implements _$$StoryMetadataCopyWith<$Res> {
  __$$StoryMetadataCopyWithImpl(
      _$StoryMetadata _value, $Res Function(_$StoryMetadata) _then)
      : super(_value, (v) => _then(v as _$StoryMetadata));

  @override
  _$StoryMetadata get _value => super._value as _$StoryMetadata;

  @override
  $Res call({
    Object? url = freezed,
    Object? text = freezed,
    Object? title = freezed,
    Object? error = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_$StoryMetadata(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MeaningfulException?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$StoryMetadata extends StoryMetadata {
  const _$StoryMetadata(
      {this.url,
      this.text,
      this.title = 'Phản hồi',
      this.error,
      this.reply_to,
      final String? $type})
      : $type = $type ?? 'story',
        super._();

  factory _$StoryMetadata.fromJson(Map<String, dynamic> json) =>
      _$$StoryMetadataFromJson(json);

  @override
  final String? url;
  @override
  final String? text;
  @override
  @JsonKey()
  final String title;
  @override
  final MeaningfulException? error;
  @override
  final String? reply_to;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageMetadata.story(url: $url, text: $text, title: $title, error: $error, reply_to: $reply_to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryMetadata &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(reply_to));

  @JsonKey(ignore: true)
  @override
  _$$StoryMetadataCopyWith<_$StoryMetadata> get copyWith =>
      __$$StoryMetadataCopyWithImpl<_$StoryMetadata>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to) $default, {
    required TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)
        video,
    required TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)
        image,
    required TResult Function(List<Attachment> attachments,
            MeaningfulException? error, String? reply_to)
        attachments,
    required TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)
        share,
    required TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)
        story,
    required TResult Function(MeaningfulException? error, String? reply_to)
        owner_request,
  }) {
    return story(url, text, title, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
  }) {
    return story?.call(url, text, title, error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
    required TResult orElse(),
  }) {
    if (story != null) {
      return story(url, text, title, error, reply_to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessageMetadata value) $default, {
    required TResult Function(VideoMetadata value) video,
    required TResult Function(ImageMetadata value) image,
    required TResult Function(AttachmentsMetadata value) attachments,
    required TResult Function(ShareMetadata value) share,
    required TResult Function(StoryMetadata value) story,
    required TResult Function(OwnerRequestMetadata value) owner_request,
  }) {
    return story(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
  }) {
    return story?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
    required TResult orElse(),
  }) {
    if (story != null) {
      return story(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryMetadataToJson(
      this,
    );
  }
}

abstract class StoryMetadata extends MessageMetadata {
  const factory StoryMetadata(
      {final String? url,
      final String? text,
      final String title,
      final MeaningfulException? error,
      final String? reply_to}) = _$StoryMetadata;
  const StoryMetadata._() : super._();

  factory StoryMetadata.fromJson(Map<String, dynamic> json) =
      _$StoryMetadata.fromJson;

  String? get url;
  String? get text;
  String get title;
  @override
  MeaningfulException? get error;
  @override
  String? get reply_to;
  @override
  @JsonKey(ignore: true)
  _$$StoryMetadataCopyWith<_$StoryMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OwnerRequestMetadataCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$$OwnerRequestMetadataCopyWith(_$OwnerRequestMetadata value,
          $Res Function(_$OwnerRequestMetadata) then) =
      __$$OwnerRequestMetadataCopyWithImpl<$Res>;
  @override
  $Res call({MeaningfulException? error, String? reply_to});

  @override
  $MeaningfulExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$$OwnerRequestMetadataCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res>
    implements _$$OwnerRequestMetadataCopyWith<$Res> {
  __$$OwnerRequestMetadataCopyWithImpl(_$OwnerRequestMetadata _value,
      $Res Function(_$OwnerRequestMetadata) _then)
      : super(_value, (v) => _then(v as _$OwnerRequestMetadata));

  @override
  _$OwnerRequestMetadata get _value => super._value as _$OwnerRequestMetadata;

  @override
  $Res call({
    Object? error = freezed,
    Object? reply_to = freezed,
  }) {
    return _then(_$OwnerRequestMetadata(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MeaningfulException?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$OwnerRequestMetadata extends OwnerRequestMetadata {
  const _$OwnerRequestMetadata({this.error, this.reply_to, final String? $type})
      : $type = $type ?? 'owner_request',
        super._();

  factory _$OwnerRequestMetadata.fromJson(Map<String, dynamic> json) =>
      _$$OwnerRequestMetadataFromJson(json);

  @override
  final MeaningfulException? error;
  @override
  final String? reply_to;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageMetadata.owner_request(error: $error, reply_to: $reply_to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerRequestMetadata &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(reply_to));

  @JsonKey(ignore: true)
  @override
  _$$OwnerRequestMetadataCopyWith<_$OwnerRequestMetadata> get copyWith =>
      __$$OwnerRequestMetadataCopyWithImpl<_$OwnerRequestMetadata>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to) $default, {
    required TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)
        video,
    required TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)
        image,
    required TResult Function(List<Attachment> attachments,
            MeaningfulException? error, String? reply_to)
        attachments,
    required TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)
        share,
    required TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)
        story,
    required TResult Function(MeaningfulException? error, String? reply_to)
        owner_request,
  }) {
    return owner_request(error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
  }) {
    return owner_request?.call(error, reply_to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MeaningfulException? error, String? reply_to)? $default, {
    TResult Function(
            AttachmentData data, MeaningfulException? error, String? reply_to)?
        video,
    TResult Function(
            String origin_url, MeaningfulException? error, String? reply_to)?
        image,
    TResult Function(List<Attachment> attachments, MeaningfulException? error,
            String? reply_to)?
        attachments,
    TResult Function(String url, bool is_like_sticker,
            MeaningfulException? error, String? reply_to)?
        share,
    TResult Function(String? url, String? text, String title,
            MeaningfulException? error, String? reply_to)?
        story,
    TResult Function(MeaningfulException? error, String? reply_to)?
        owner_request,
    required TResult orElse(),
  }) {
    if (owner_request != null) {
      return owner_request(error, reply_to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessageMetadata value) $default, {
    required TResult Function(VideoMetadata value) video,
    required TResult Function(ImageMetadata value) image,
    required TResult Function(AttachmentsMetadata value) attachments,
    required TResult Function(ShareMetadata value) share,
    required TResult Function(StoryMetadata value) story,
    required TResult Function(OwnerRequestMetadata value) owner_request,
  }) {
    return owner_request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
  }) {
    return owner_request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessageMetadata value)? $default, {
    TResult Function(VideoMetadata value)? video,
    TResult Function(ImageMetadata value)? image,
    TResult Function(AttachmentsMetadata value)? attachments,
    TResult Function(ShareMetadata value)? share,
    TResult Function(StoryMetadata value)? story,
    TResult Function(OwnerRequestMetadata value)? owner_request,
    required TResult orElse(),
  }) {
    if (owner_request != null) {
      return owner_request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerRequestMetadataToJson(
      this,
    );
  }
}

abstract class OwnerRequestMetadata extends MessageMetadata {
  const factory OwnerRequestMetadata(
      {final MeaningfulException? error,
      final String? reply_to}) = _$OwnerRequestMetadata;
  const OwnerRequestMetadata._() : super._();

  factory OwnerRequestMetadata.fromJson(Map<String, dynamic> json) =
      _$OwnerRequestMetadata.fromJson;

  @override
  MeaningfulException? get error;
  @override
  String? get reply_to;
  @override
  @JsonKey(ignore: true)
  _$$OwnerRequestMetadataCopyWith<_$OwnerRequestMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
