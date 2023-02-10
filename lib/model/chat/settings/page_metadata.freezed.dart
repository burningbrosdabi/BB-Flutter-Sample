// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageMetadata _$PageMetadataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'IG':
      return IGPageMetadata.fromJson(json);
    case 'FB':
      return FBPageMetadata.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PageMetadata',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PageMetadata {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get page_id => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String name, String page_id, String token)
        IG,
    required TResult Function(
            String id, String name, String page_id, String token)
        FB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, String page_id, String token)? IG,
    TResult Function(String id, String name, String page_id, String token)? FB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String page_id, String token)? IG,
    TResult Function(String id, String name, String page_id, String token)? FB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IGPageMetadata value) IG,
    required TResult Function(FBPageMetadata value) FB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IGPageMetadata value)? IG,
    TResult Function(FBPageMetadata value)? FB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IGPageMetadata value)? IG,
    TResult Function(FBPageMetadata value)? FB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageMetadataCopyWith<PageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageMetadataCopyWith<$Res> {
  factory $PageMetadataCopyWith(
          PageMetadata value, $Res Function(PageMetadata) then) =
      _$PageMetadataCopyWithImpl<$Res>;
  $Res call({String id, String name, String page_id, String token});
}

/// @nodoc
class _$PageMetadataCopyWithImpl<$Res> implements $PageMetadataCopyWith<$Res> {
  _$PageMetadataCopyWithImpl(this._value, this._then);

  final PageMetadata _value;
  // ignore: unused_field
  final $Res Function(PageMetadata) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? page_id = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page_id: page_id == freezed
          ? _value.page_id
          : page_id // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$IGPageMetadataCopyWith<$Res>
    implements $PageMetadataCopyWith<$Res> {
  factory _$$IGPageMetadataCopyWith(
          _$IGPageMetadata value, $Res Function(_$IGPageMetadata) then) =
      __$$IGPageMetadataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String page_id, String token});
}

/// @nodoc
class __$$IGPageMetadataCopyWithImpl<$Res>
    extends _$PageMetadataCopyWithImpl<$Res>
    implements _$$IGPageMetadataCopyWith<$Res> {
  __$$IGPageMetadataCopyWithImpl(
      _$IGPageMetadata _value, $Res Function(_$IGPageMetadata) _then)
      : super(_value, (v) => _then(v as _$IGPageMetadata));

  @override
  _$IGPageMetadata get _value => super._value as _$IGPageMetadata;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? page_id = freezed,
    Object? token = freezed,
  }) {
    return _then(_$IGPageMetadata(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page_id: page_id == freezed
          ? _value.page_id
          : page_id // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IGPageMetadata extends IGPageMetadata {
  const _$IGPageMetadata(
      {required this.id,
      required this.name,
      required this.page_id,
      required this.token,
      final String? $type})
      : $type = $type ?? 'IG',
        super._();

  factory _$IGPageMetadata.fromJson(Map<String, dynamic> json) =>
      _$$IGPageMetadataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String page_id;
  @override
  final String token;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PageMetadata.IG(id: $id, name: $name, page_id: $page_id, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IGPageMetadata &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.page_id, page_id) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(page_id),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$IGPageMetadataCopyWith<_$IGPageMetadata> get copyWith =>
      __$$IGPageMetadataCopyWithImpl<_$IGPageMetadata>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String name, String page_id, String token)
        IG,
    required TResult Function(
            String id, String name, String page_id, String token)
        FB,
  }) {
    return IG(id, name, page_id, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, String page_id, String token)? IG,
    TResult Function(String id, String name, String page_id, String token)? FB,
  }) {
    return IG?.call(id, name, page_id, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String page_id, String token)? IG,
    TResult Function(String id, String name, String page_id, String token)? FB,
    required TResult orElse(),
  }) {
    if (IG != null) {
      return IG(id, name, page_id, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IGPageMetadata value) IG,
    required TResult Function(FBPageMetadata value) FB,
  }) {
    return IG(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IGPageMetadata value)? IG,
    TResult Function(FBPageMetadata value)? FB,
  }) {
    return IG?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IGPageMetadata value)? IG,
    TResult Function(FBPageMetadata value)? FB,
    required TResult orElse(),
  }) {
    if (IG != null) {
      return IG(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IGPageMetadataToJson(
      this,
    );
  }
}

abstract class IGPageMetadata extends PageMetadata {
  const factory IGPageMetadata(
      {required final String id,
      required final String name,
      required final String page_id,
      required final String token}) = _$IGPageMetadata;
  const IGPageMetadata._() : super._();

  factory IGPageMetadata.fromJson(Map<String, dynamic> json) =
      _$IGPageMetadata.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get page_id;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$IGPageMetadataCopyWith<_$IGPageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FBPageMetadataCopyWith<$Res>
    implements $PageMetadataCopyWith<$Res> {
  factory _$$FBPageMetadataCopyWith(
          _$FBPageMetadata value, $Res Function(_$FBPageMetadata) then) =
      __$$FBPageMetadataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String page_id, String token});
}

/// @nodoc
class __$$FBPageMetadataCopyWithImpl<$Res>
    extends _$PageMetadataCopyWithImpl<$Res>
    implements _$$FBPageMetadataCopyWith<$Res> {
  __$$FBPageMetadataCopyWithImpl(
      _$FBPageMetadata _value, $Res Function(_$FBPageMetadata) _then)
      : super(_value, (v) => _then(v as _$FBPageMetadata));

  @override
  _$FBPageMetadata get _value => super._value as _$FBPageMetadata;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? page_id = freezed,
    Object? token = freezed,
  }) {
    return _then(_$FBPageMetadata(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page_id: page_id == freezed
          ? _value.page_id
          : page_id // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FBPageMetadata extends FBPageMetadata {
  const _$FBPageMetadata(
      {required this.id,
      required this.name,
      required this.page_id,
      required this.token,
      final String? $type})
      : $type = $type ?? 'FB',
        super._();

  factory _$FBPageMetadata.fromJson(Map<String, dynamic> json) =>
      _$$FBPageMetadataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String page_id;
  @override
  final String token;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PageMetadata.FB(id: $id, name: $name, page_id: $page_id, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FBPageMetadata &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.page_id, page_id) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(page_id),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$FBPageMetadataCopyWith<_$FBPageMetadata> get copyWith =>
      __$$FBPageMetadataCopyWithImpl<_$FBPageMetadata>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String name, String page_id, String token)
        IG,
    required TResult Function(
            String id, String name, String page_id, String token)
        FB,
  }) {
    return FB(id, name, page_id, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, String name, String page_id, String token)? IG,
    TResult Function(String id, String name, String page_id, String token)? FB,
  }) {
    return FB?.call(id, name, page_id, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String page_id, String token)? IG,
    TResult Function(String id, String name, String page_id, String token)? FB,
    required TResult orElse(),
  }) {
    if (FB != null) {
      return FB(id, name, page_id, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IGPageMetadata value) IG,
    required TResult Function(FBPageMetadata value) FB,
  }) {
    return FB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IGPageMetadata value)? IG,
    TResult Function(FBPageMetadata value)? FB,
  }) {
    return FB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IGPageMetadata value)? IG,
    TResult Function(FBPageMetadata value)? FB,
    required TResult orElse(),
  }) {
    if (FB != null) {
      return FB(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FBPageMetadataToJson(
      this,
    );
  }
}

abstract class FBPageMetadata extends PageMetadata {
  const factory FBPageMetadata(
      {required final String id,
      required final String name,
      required final String page_id,
      required final String token}) = _$FBPageMetadata;
  const FBPageMetadata._() : super._();

  factory FBPageMetadata.fromJson(Map<String, dynamic> json) =
      _$FBPageMetadata.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get page_id;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$FBPageMetadataCopyWith<_$FBPageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
