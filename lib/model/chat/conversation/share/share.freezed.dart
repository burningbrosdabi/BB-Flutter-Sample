// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'share.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Share _$ShareFromJson(Map<String, dynamic> json) {
  return _Share.fromJson(json);
}

/// @nodoc
mixin _$Share {
  String get url => throw _privateConstructorUsedError;
  bool get is_like_sticker => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShareCopyWith<Share> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareCopyWith<$Res> {
  factory $ShareCopyWith(Share value, $Res Function(Share) then) =
      _$ShareCopyWithImpl<$Res>;
  $Res call({String url, bool is_like_sticker});
}

/// @nodoc
class _$ShareCopyWithImpl<$Res> implements $ShareCopyWith<$Res> {
  _$ShareCopyWithImpl(this._value, this._then);

  final Share _value;
  // ignore: unused_field
  final $Res Function(Share) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? is_like_sticker = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      is_like_sticker: is_like_sticker == freezed
          ? _value.is_like_sticker
          : is_like_sticker // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ShareCopyWith<$Res> implements $ShareCopyWith<$Res> {
  factory _$$_ShareCopyWith(_$_Share value, $Res Function(_$_Share) then) =
      __$$_ShareCopyWithImpl<$Res>;
  @override
  $Res call({String url, bool is_like_sticker});
}

/// @nodoc
class __$$_ShareCopyWithImpl<$Res> extends _$ShareCopyWithImpl<$Res>
    implements _$$_ShareCopyWith<$Res> {
  __$$_ShareCopyWithImpl(_$_Share _value, $Res Function(_$_Share) _then)
      : super(_value, (v) => _then(v as _$_Share));

  @override
  _$_Share get _value => super._value as _$_Share;

  @override
  $Res call({
    Object? url = freezed,
    Object? is_like_sticker = freezed,
  }) {
    return _then(_$_Share(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      is_like_sticker: is_like_sticker == freezed
          ? _value.is_like_sticker
          : is_like_sticker // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_Share extends _Share {
  _$_Share({required this.url, this.is_like_sticker = false}) : super._();

  factory _$_Share.fromJson(Map<String, dynamic> json) =>
      _$$_ShareFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final bool is_like_sticker;

  @override
  String toString() {
    return 'Share(url: $url, is_like_sticker: $is_like_sticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Share &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.is_like_sticker, is_like_sticker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(is_like_sticker));

  @JsonKey(ignore: true)
  @override
  _$$_ShareCopyWith<_$_Share> get copyWith =>
      __$$_ShareCopyWithImpl<_$_Share>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShareToJson(
      this,
    );
  }
}

abstract class _Share extends Share {
  factory _Share({required final String url, final bool is_like_sticker}) =
      _$_Share;
  _Share._() : super._();

  factory _Share.fromJson(Map<String, dynamic> json) = _$_Share.fromJson;

  @override
  String get url;
  @override
  bool get is_like_sticker;
  @override
  @JsonKey(ignore: true)
  _$$_ShareCopyWith<_$_Share> get copyWith =>
      throw _privateConstructorUsedError;
}
