// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messenger_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessengerNote _$MessengerNoteFromJson(Map<String, dynamic> json) {
  return _MessengerNote.fromJson(json);
}

/// @nodoc
mixin _$MessengerNote {
  int get pk => throw _privateConstructorUsedError;
  NoteAuthor get staff => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDate)
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessengerNoteCopyWith<MessengerNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessengerNoteCopyWith<$Res> {
  factory $MessengerNoteCopyWith(
          MessengerNote value, $Res Function(MessengerNote) then) =
      _$MessengerNoteCopyWithImpl<$Res>;
  $Res call(
      {int pk,
      NoteAuthor staff,
      String text,
      @JsonKey(fromJson: parseDate) DateTime created});

  $NoteAuthorCopyWith<$Res> get staff;
}

/// @nodoc
class _$MessengerNoteCopyWithImpl<$Res>
    implements $MessengerNoteCopyWith<$Res> {
  _$MessengerNoteCopyWithImpl(this._value, this._then);

  final MessengerNote _value;
  // ignore: unused_field
  final $Res Function(MessengerNote) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? staff = freezed,
    Object? text = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      staff: staff == freezed
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as NoteAuthor,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $NoteAuthorCopyWith<$Res> get staff {
    return $NoteAuthorCopyWith<$Res>(_value.staff, (value) {
      return _then(_value.copyWith(staff: value));
    });
  }
}

/// @nodoc
abstract class _$$_MessengerNoteCopyWith<$Res>
    implements $MessengerNoteCopyWith<$Res> {
  factory _$$_MessengerNoteCopyWith(
          _$_MessengerNote value, $Res Function(_$_MessengerNote) then) =
      __$$_MessengerNoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pk,
      NoteAuthor staff,
      String text,
      @JsonKey(fromJson: parseDate) DateTime created});

  @override
  $NoteAuthorCopyWith<$Res> get staff;
}

/// @nodoc
class __$$_MessengerNoteCopyWithImpl<$Res>
    extends _$MessengerNoteCopyWithImpl<$Res>
    implements _$$_MessengerNoteCopyWith<$Res> {
  __$$_MessengerNoteCopyWithImpl(
      _$_MessengerNote _value, $Res Function(_$_MessengerNote) _then)
      : super(_value, (v) => _then(v as _$_MessengerNote));

  @override
  _$_MessengerNote get _value => super._value as _$_MessengerNote;

  @override
  $Res call({
    Object? pk = freezed,
    Object? staff = freezed,
    Object? text = freezed,
    Object? created = freezed,
  }) {
    return _then(_$_MessengerNote(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      staff: staff == freezed
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as NoteAuthor,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_MessengerNote extends _MessengerNote {
  const _$_MessengerNote(
      {required this.pk,
      required this.staff,
      required this.text,
      @JsonKey(fromJson: parseDate) required this.created})
      : super._();

  factory _$_MessengerNote.fromJson(Map<String, dynamic> json) =>
      _$$_MessengerNoteFromJson(json);

  @override
  final int pk;
  @override
  final NoteAuthor staff;
  @override
  final String text;
  @override
  @JsonKey(fromJson: parseDate)
  final DateTime created;

  @override
  String toString() {
    return 'MessengerNote(pk: $pk, staff: $staff, text: $text, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessengerNote &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality().equals(other.staff, staff) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(staff),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$$_MessengerNoteCopyWith<_$_MessengerNote> get copyWith =>
      __$$_MessengerNoteCopyWithImpl<_$_MessengerNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessengerNoteToJson(
      this,
    );
  }
}

abstract class _MessengerNote extends MessengerNote {
  const factory _MessengerNote(
          {required final int pk,
          required final NoteAuthor staff,
          required final String text,
          @JsonKey(fromJson: parseDate) required final DateTime created}) =
      _$_MessengerNote;
  const _MessengerNote._() : super._();

  factory _MessengerNote.fromJson(Map<String, dynamic> json) =
      _$_MessengerNote.fromJson;

  @override
  int get pk;
  @override
  NoteAuthor get staff;
  @override
  String get text;
  @override
  @JsonKey(fromJson: parseDate)
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$_MessengerNoteCopyWith<_$_MessengerNote> get copyWith =>
      throw _privateConstructorUsedError;
}
