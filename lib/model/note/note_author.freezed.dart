// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteAuthor _$NoteAuthorFromJson(Map<String, dynamic> json) {
  return _NoteAuthor.fromJson(json);
}

/// @nodoc
mixin _$NoteAuthor {
  int get pk => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteAuthorCopyWith<NoteAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteAuthorCopyWith<$Res> {
  factory $NoteAuthorCopyWith(
          NoteAuthor value, $Res Function(NoteAuthor) then) =
      _$NoteAuthorCopyWithImpl<$Res>;
  $Res call({int pk, String first_name, String last_name});
}

/// @nodoc
class _$NoteAuthorCopyWithImpl<$Res> implements $NoteAuthorCopyWith<$Res> {
  _$NoteAuthorCopyWithImpl(this._value, this._then);

  final NoteAuthor _value;
  // ignore: unused_field
  final $Res Function(NoteAuthor) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NoteAuthorCopyWith<$Res>
    implements $NoteAuthorCopyWith<$Res> {
  factory _$$_NoteAuthorCopyWith(
          _$_NoteAuthor value, $Res Function(_$_NoteAuthor) then) =
      __$$_NoteAuthorCopyWithImpl<$Res>;
  @override
  $Res call({int pk, String first_name, String last_name});
}

/// @nodoc
class __$$_NoteAuthorCopyWithImpl<$Res> extends _$NoteAuthorCopyWithImpl<$Res>
    implements _$$_NoteAuthorCopyWith<$Res> {
  __$$_NoteAuthorCopyWithImpl(
      _$_NoteAuthor _value, $Res Function(_$_NoteAuthor) _then)
      : super(_value, (v) => _then(v as _$_NoteAuthor));

  @override
  _$_NoteAuthor get _value => super._value as _$_NoteAuthor;

  @override
  $Res call({
    Object? pk = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
  }) {
    return _then(_$_NoteAuthor(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_NoteAuthor extends _NoteAuthor {
  const _$_NoteAuthor(
      {required this.pk, this.first_name = '', this.last_name = ''})
      : super._();

  factory _$_NoteAuthor.fromJson(Map<String, dynamic> json) =>
      _$$_NoteAuthorFromJson(json);

  @override
  final int pk;
  @override
  @JsonKey()
  final String first_name;
  @override
  @JsonKey()
  final String last_name;

  @override
  String toString() {
    return 'NoteAuthor(pk: $pk, first_name: $first_name, last_name: $last_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteAuthor &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality()
                .equals(other.first_name, first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(first_name),
      const DeepCollectionEquality().hash(last_name));

  @JsonKey(ignore: true)
  @override
  _$$_NoteAuthorCopyWith<_$_NoteAuthor> get copyWith =>
      __$$_NoteAuthorCopyWithImpl<_$_NoteAuthor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteAuthorToJson(
      this,
    );
  }
}

abstract class _NoteAuthor extends NoteAuthor {
  const factory _NoteAuthor(
      {required final int pk,
      final String first_name,
      final String last_name}) = _$_NoteAuthor;
  const _NoteAuthor._() : super._();

  factory _NoteAuthor.fromJson(Map<String, dynamic> json) =
      _$_NoteAuthor.fromJson;

  @override
  int get pk;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  @JsonKey(ignore: true)
  _$$_NoteAuthorCopyWith<_$_NoteAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}
