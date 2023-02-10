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

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'image':
      return ImageAttachment.fromJson(json);
    case 'video':
      return VideoAttachment.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Attachment', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Attachment {
  @JsonKey(name: 'data')
  AttachmentData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int size, @JsonKey(name: 'data') AttachmentData data)
        image,
    required TResult Function(@JsonKey(name: 'data') AttachmentData data) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int size, @JsonKey(name: 'data') AttachmentData data)?
        image,
    TResult Function(@JsonKey(name: 'data') AttachmentData data)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int size, @JsonKey(name: 'data') AttachmentData data)?
        image,
    TResult Function(@JsonKey(name: 'data') AttachmentData data)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageAttachment value) image,
    required TResult Function(VideoAttachment value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(VideoAttachment value)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(VideoAttachment value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') AttachmentData data});

  $AttachmentDataCopyWith<$Res> get data;
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res> implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  final Attachment _value;
  // ignore: unused_field
  final $Res Function(Attachment) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AttachmentData,
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
abstract class _$$ImageAttachmentCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$ImageAttachmentCopyWith(
          _$ImageAttachment value, $Res Function(_$ImageAttachment) then) =
      __$$ImageAttachmentCopyWithImpl<$Res>;
  @override
  $Res call({int size, @JsonKey(name: 'data') AttachmentData data});

  @override
  $AttachmentDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ImageAttachmentCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res>
    implements _$$ImageAttachmentCopyWith<$Res> {
  __$$ImageAttachmentCopyWithImpl(
      _$ImageAttachment _value, $Res Function(_$ImageAttachment) _then)
      : super(_value, (v) => _then(v as _$ImageAttachment));

  @override
  _$ImageAttachment get _value => super._value as _$ImageAttachment;

  @override
  $Res call({
    Object? size = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ImageAttachment(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AttachmentData,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$ImageAttachment extends ImageAttachment {
  const _$ImageAttachment(
      {this.size = 0,
      @JsonKey(name: 'data') required this.data,
      final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$ImageAttachment.fromJson(Map<String, dynamic> json) =>
      _$$ImageAttachmentFromJson(json);

  @override
  @JsonKey()
  final int size;
  @override
  @JsonKey(name: 'data')
  final AttachmentData data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Attachment.image(size: $size, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageAttachment &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$ImageAttachmentCopyWith<_$ImageAttachment> get copyWith =>
      __$$ImageAttachmentCopyWithImpl<_$ImageAttachment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int size, @JsonKey(name: 'data') AttachmentData data)
        image,
    required TResult Function(@JsonKey(name: 'data') AttachmentData data) video,
  }) {
    return image(size, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int size, @JsonKey(name: 'data') AttachmentData data)?
        image,
    TResult Function(@JsonKey(name: 'data') AttachmentData data)? video,
  }) {
    return image?.call(size, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int size, @JsonKey(name: 'data') AttachmentData data)?
        image,
    TResult Function(@JsonKey(name: 'data') AttachmentData data)? video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(size, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageAttachment value) image,
    required TResult Function(VideoAttachment value) video,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(VideoAttachment value)? video,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(VideoAttachment value)? video,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageAttachmentToJson(
      this,
    );
  }
}

abstract class ImageAttachment extends Attachment {
  const factory ImageAttachment(
          {final int size,
          @JsonKey(name: 'data') required final AttachmentData data}) =
      _$ImageAttachment;
  const ImageAttachment._() : super._();

  factory ImageAttachment.fromJson(Map<String, dynamic> json) =
      _$ImageAttachment.fromJson;

  int get size;
  @override
  @JsonKey(name: 'data')
  AttachmentData get data;
  @override
  @JsonKey(ignore: true)
  _$$ImageAttachmentCopyWith<_$ImageAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoAttachmentCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$VideoAttachmentCopyWith(
          _$VideoAttachment value, $Res Function(_$VideoAttachment) then) =
      __$$VideoAttachmentCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') AttachmentData data});

  @override
  $AttachmentDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$VideoAttachmentCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res>
    implements _$$VideoAttachmentCopyWith<$Res> {
  __$$VideoAttachmentCopyWithImpl(
      _$VideoAttachment _value, $Res Function(_$VideoAttachment) _then)
      : super(_value, (v) => _then(v as _$VideoAttachment));

  @override
  _$VideoAttachment get _value => super._value as _$VideoAttachment;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$VideoAttachment(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AttachmentData,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$VideoAttachment extends VideoAttachment {
  const _$VideoAttachment(
      {@JsonKey(name: 'data') required this.data, final String? $type})
      : $type = $type ?? 'video',
        super._();

  factory _$VideoAttachment.fromJson(Map<String, dynamic> json) =>
      _$$VideoAttachmentFromJson(json);

  @override
  @JsonKey(name: 'data')
  final AttachmentData data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Attachment.video(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoAttachment &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$VideoAttachmentCopyWith<_$VideoAttachment> get copyWith =>
      __$$VideoAttachmentCopyWithImpl<_$VideoAttachment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int size, @JsonKey(name: 'data') AttachmentData data)
        image,
    required TResult Function(@JsonKey(name: 'data') AttachmentData data) video,
  }) {
    return video(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int size, @JsonKey(name: 'data') AttachmentData data)?
        image,
    TResult Function(@JsonKey(name: 'data') AttachmentData data)? video,
  }) {
    return video?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int size, @JsonKey(name: 'data') AttachmentData data)?
        image,
    TResult Function(@JsonKey(name: 'data') AttachmentData data)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageAttachment value) image,
    required TResult Function(VideoAttachment value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(VideoAttachment value)? video,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageAttachment value)? image,
    TResult Function(VideoAttachment value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoAttachmentToJson(
      this,
    );
  }
}

abstract class VideoAttachment extends Attachment {
  const factory VideoAttachment(
          {@JsonKey(name: 'data') required final AttachmentData data}) =
      _$VideoAttachment;
  const VideoAttachment._() : super._();

  factory VideoAttachment.fromJson(Map<String, dynamic> json) =
      _$VideoAttachment.fromJson;

  @override
  @JsonKey(name: 'data')
  AttachmentData get data;
  @override
  @JsonKey(ignore: true)
  _$$VideoAttachmentCopyWith<_$VideoAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

AttachmentData _$AttachmentDataFromJson(Map<String, dynamic> json) {
  return _AttachmentData.fromJson(json);
}

/// @nodoc
mixin _$AttachmentData {
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get preview_url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Uint8List? get preview_bytes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentDataCopyWith<AttachmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentDataCopyWith<$Res> {
  factory $AttachmentDataCopyWith(
          AttachmentData value, $Res Function(AttachmentData) then) =
      _$AttachmentDataCopyWithImpl<$Res>;
  $Res call(
      {int? width,
      int? height,
      String url,
      String? preview_url,
      @JsonKey(ignore: true) Uint8List? preview_bytes});
}

/// @nodoc
class _$AttachmentDataCopyWithImpl<$Res>
    implements $AttachmentDataCopyWith<$Res> {
  _$AttachmentDataCopyWithImpl(this._value, this._then);

  final AttachmentData _value;
  // ignore: unused_field
  final $Res Function(AttachmentData) _then;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? preview_url = freezed,
    Object? preview_bytes = freezed,
  }) {
    return _then(_value.copyWith(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      preview_url: preview_url == freezed
          ? _value.preview_url
          : preview_url // ignore: cast_nullable_to_non_nullable
              as String?,
      preview_bytes: preview_bytes == freezed
          ? _value.preview_bytes
          : preview_bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
abstract class _$$_AttachmentDataCopyWith<$Res>
    implements $AttachmentDataCopyWith<$Res> {
  factory _$$_AttachmentDataCopyWith(
          _$_AttachmentData value, $Res Function(_$_AttachmentData) then) =
      __$$_AttachmentDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? width,
      int? height,
      String url,
      String? preview_url,
      @JsonKey(ignore: true) Uint8List? preview_bytes});
}

/// @nodoc
class __$$_AttachmentDataCopyWithImpl<$Res>
    extends _$AttachmentDataCopyWithImpl<$Res>
    implements _$$_AttachmentDataCopyWith<$Res> {
  __$$_AttachmentDataCopyWithImpl(
      _$_AttachmentData _value, $Res Function(_$_AttachmentData) _then)
      : super(_value, (v) => _then(v as _$_AttachmentData));

  @override
  _$_AttachmentData get _value => super._value as _$_AttachmentData;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? preview_url = freezed,
    Object? preview_bytes = freezed,
  }) {
    return _then(_$_AttachmentData(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      preview_url: preview_url == freezed
          ? _value.preview_url
          : preview_url // ignore: cast_nullable_to_non_nullable
              as String?,
      preview_bytes: preview_bytes == freezed
          ? _value.preview_bytes
          : preview_bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_AttachmentData extends _AttachmentData {
  const _$_AttachmentData(
      {this.width,
      this.height,
      required this.url,
      this.preview_url,
      @JsonKey(ignore: true) this.preview_bytes})
      : super._();

  factory _$_AttachmentData.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentDataFromJson(json);

  @override
  final int? width;
  @override
  final int? height;
  @override
  final String url;
  @override
  final String? preview_url;
  @override
  @JsonKey(ignore: true)
  final Uint8List? preview_bytes;

  @override
  String toString() {
    return 'AttachmentData(width: $width, height: $height, url: $url, preview_url: $preview_url, preview_bytes: $preview_bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentData &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.preview_url, preview_url) &&
            const DeepCollectionEquality()
                .equals(other.preview_bytes, preview_bytes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(preview_url),
      const DeepCollectionEquality().hash(preview_bytes));

  @JsonKey(ignore: true)
  @override
  _$$_AttachmentDataCopyWith<_$_AttachmentData> get copyWith =>
      __$$_AttachmentDataCopyWithImpl<_$_AttachmentData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentDataToJson(
      this,
    );
  }
}

abstract class _AttachmentData extends AttachmentData {
  const factory _AttachmentData(
          {final int? width,
          final int? height,
          required final String url,
          final String? preview_url,
          @JsonKey(ignore: true) final Uint8List? preview_bytes}) =
      _$_AttachmentData;
  const _AttachmentData._() : super._();

  factory _AttachmentData.fromJson(Map<String, dynamic> json) =
      _$_AttachmentData.fromJson;

  @override
  int? get width;
  @override
  int? get height;
  @override
  String get url;
  @override
  String? get preview_url;
  @override
  @JsonKey(ignore: true)
  Uint8List? get preview_bytes;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentDataCopyWith<_$_AttachmentData> get copyWith =>
      throw _privateConstructorUsedError;
}
