// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gallery_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GalleryCategory _$GalleryCategoryFromJson(Map<String, dynamic> json) {
  return _GalleryCategory.fromJson(json);
}

/// @nodoc
mixin _$GalleryCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryCategoryCopyWith<GalleryCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryCategoryCopyWith<$Res> {
  factory $GalleryCategoryCopyWith(
          GalleryCategory value, $Res Function(GalleryCategory) then) =
      _$GalleryCategoryCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$GalleryCategoryCopyWithImpl<$Res>
    implements $GalleryCategoryCopyWith<$Res> {
  _$GalleryCategoryCopyWithImpl(this._value, this._then);

  final GalleryCategory _value;
  // ignore: unused_field
  final $Res Function(GalleryCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_GalleryCategoryCopyWith<$Res>
    implements $GalleryCategoryCopyWith<$Res> {
  factory _$$_GalleryCategoryCopyWith(
          _$_GalleryCategory value, $Res Function(_$_GalleryCategory) then) =
      __$$_GalleryCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$$_GalleryCategoryCopyWithImpl<$Res>
    extends _$GalleryCategoryCopyWithImpl<$Res>
    implements _$$_GalleryCategoryCopyWith<$Res> {
  __$$_GalleryCategoryCopyWithImpl(
      _$_GalleryCategory _value, $Res Function(_$_GalleryCategory) _then)
      : super(_value, (v) => _then(v as _$_GalleryCategory));

  @override
  _$_GalleryCategory get _value => super._value as _$_GalleryCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_GalleryCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_GalleryCategory extends _GalleryCategory {
  const _$_GalleryCategory({required this.id, required this.title}) : super._();

  factory _$_GalleryCategory.fromJson(Map<String, dynamic> json) =>
      _$$_GalleryCategoryFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'GalleryCategory(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GalleryCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_GalleryCategoryCopyWith<_$_GalleryCategory> get copyWith =>
      __$$_GalleryCategoryCopyWithImpl<_$_GalleryCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GalleryCategoryToJson(
      this,
    );
  }
}

abstract class _GalleryCategory extends GalleryCategory {
  const factory _GalleryCategory(
      {required final int id,
      required final String title}) = _$_GalleryCategory;
  const _GalleryCategory._() : super._();

  factory _GalleryCategory.fromJson(Map<String, dynamic> json) =
      _$_GalleryCategory.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_GalleryCategoryCopyWith<_$_GalleryCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
