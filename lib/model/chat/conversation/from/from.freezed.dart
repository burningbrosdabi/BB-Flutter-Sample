// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'from.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

From _$FromFromJson(Map<String, dynamic> json) {
  return _From.fromJson(json);
}

/// @nodoc
mixin _$From {
  String get id => throw _privateConstructorUsedError;
  String? get profile_pic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FromCopyWith<From> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FromCopyWith<$Res> {
  factory $FromCopyWith(From value, $Res Function(From) then) =
      _$FromCopyWithImpl<$Res>;
  $Res call({String id, String? profile_pic});
}

/// @nodoc
class _$FromCopyWithImpl<$Res> implements $FromCopyWith<$Res> {
  _$FromCopyWithImpl(this._value, this._then);

  final From _value;
  // ignore: unused_field
  final $Res Function(From) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile_pic = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile_pic: profile_pic == freezed
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FromCopyWith<$Res> implements $FromCopyWith<$Res> {
  factory _$$_FromCopyWith(_$_From value, $Res Function(_$_From) then) =
      __$$_FromCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? profile_pic});
}

/// @nodoc
class __$$_FromCopyWithImpl<$Res> extends _$FromCopyWithImpl<$Res>
    implements _$$_FromCopyWith<$Res> {
  __$$_FromCopyWithImpl(_$_From _value, $Res Function(_$_From) _then)
      : super(_value, (v) => _then(v as _$_From));

  @override
  _$_From get _value => super._value as _$_From;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile_pic = freezed,
  }) {
    return _then(_$_From(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile_pic: profile_pic == freezed
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true)
class _$_From extends _From {
  const _$_From({required this.id, this.profile_pic}) : super._();

  factory _$_From.fromJson(Map<String, dynamic> json) => _$$_FromFromJson(json);

  @override
  final String id;
  @override
  final String? profile_pic;

  @override
  String toString() {
    return 'From(id: $id, profile_pic: $profile_pic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_From &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.profile_pic, profile_pic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(profile_pic));

  @JsonKey(ignore: true)
  @override
  _$$_FromCopyWith<_$_From> get copyWith =>
      __$$_FromCopyWithImpl<_$_From>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FromToJson(
      this,
    );
  }
}

abstract class _From extends From {
  const factory _From({required final String id, final String? profile_pic}) =
      _$_From;
  const _From._() : super._();

  factory _From.fromJson(Map<String, dynamic> json) = _$_From.fromJson;

  @override
  String get id;
  @override
  String? get profile_pic;
  @override
  @JsonKey(ignore: true)
  _$$_FromCopyWith<_$_From> get copyWith => throw _privateConstructorUsedError;
}
