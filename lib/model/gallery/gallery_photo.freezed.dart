// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gallery_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GalleryPhoto _$GalleryPhotoFromJson(Map<String, dynamic> json) {
  return _GalleryPhoto.fromJson(json);
}

/// @nodoc
mixin _$GalleryPhoto {
  int get id => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  String get photo_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryPhotoCopyWith<GalleryPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryPhotoCopyWith<$Res> {
  factory $GalleryPhotoCopyWith(
          GalleryPhoto value, $Res Function(GalleryPhoto) then) =
      _$GalleryPhotoCopyWithImpl<$Res>;
  $Res call({int id, int category, String photo_url});
}

/// @nodoc
class _$GalleryPhotoCopyWithImpl<$Res> implements $GalleryPhotoCopyWith<$Res> {
  _$GalleryPhotoCopyWithImpl(this._value, this._then);

  final GalleryPhoto _value;
  // ignore: unused_field
  final $Res Function(GalleryPhoto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? photo_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      photo_url: photo_url == freezed
          ? _value.photo_url
          : photo_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GalleryPhotoCopyWith<$Res>
    implements $GalleryPhotoCopyWith<$Res> {
  factory _$$_GalleryPhotoCopyWith(
          _$_GalleryPhoto value, $Res Function(_$_GalleryPhoto) then) =
      __$$_GalleryPhotoCopyWithImpl<$Res>;
  @override
  $Res call({int id, int category, String photo_url});
}

/// @nodoc
class __$$_GalleryPhotoCopyWithImpl<$Res>
    extends _$GalleryPhotoCopyWithImpl<$Res>
    implements _$$_GalleryPhotoCopyWith<$Res> {
  __$$_GalleryPhotoCopyWithImpl(
      _$_GalleryPhoto _value, $Res Function(_$_GalleryPhoto) _then)
      : super(_value, (v) => _then(v as _$_GalleryPhoto));

  @override
  _$_GalleryPhoto get _value => super._value as _$_GalleryPhoto;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? photo_url = freezed,
  }) {
    return _then(_$_GalleryPhoto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      photo_url: photo_url == freezed
          ? _value.photo_url
          : photo_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GalleryPhoto extends _GalleryPhoto {
  _$_GalleryPhoto(
      {required this.id, required this.category, required this.photo_url})
      : super._();

  factory _$_GalleryPhoto.fromJson(Map<String, dynamic> json) =>
      _$$_GalleryPhotoFromJson(json);

  @override
  final int id;
  @override
  final int category;
  @override
  final String photo_url;

  @override
  String toString() {
    return 'GalleryPhoto(id: $id, category: $category, photo_url: $photo_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GalleryPhoto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.photo_url, photo_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(photo_url));

  @JsonKey(ignore: true)
  @override
  _$$_GalleryPhotoCopyWith<_$_GalleryPhoto> get copyWith =>
      __$$_GalleryPhotoCopyWithImpl<_$_GalleryPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GalleryPhotoToJson(
      this,
    );
  }
}

abstract class _GalleryPhoto extends GalleryPhoto {
  factory _GalleryPhoto(
      {required final int id,
      required final int category,
      required final String photo_url}) = _$_GalleryPhoto;
  _GalleryPhoto._() : super._();

  factory _GalleryPhoto.fromJson(Map<String, dynamic> json) =
      _$_GalleryPhoto.fromJson;

  @override
  int get id;
  @override
  int get category;
  @override
  String get photo_url;
  @override
  @JsonKey(ignore: true)
  _$$_GalleryPhotoCopyWith<_$_GalleryPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
