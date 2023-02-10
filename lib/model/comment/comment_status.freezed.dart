// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNew,
    required TResult Function() replied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? isNew,
    TResult Function()? replied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNew,
    TResult Function()? replied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewCommentStatus value) isNew,
    required TResult Function(_RepliedCommentStatus value) replied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewCommentStatus value)? isNew,
    TResult Function(_RepliedCommentStatus value)? replied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewCommentStatus value)? isNew,
    TResult Function(_RepliedCommentStatus value)? replied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStatusCopyWith<$Res> {
  factory $CommentStatusCopyWith(
          CommentStatus value, $Res Function(CommentStatus) then) =
      _$CommentStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentStatusCopyWithImpl<$Res>
    implements $CommentStatusCopyWith<$Res> {
  _$CommentStatusCopyWithImpl(this._value, this._then);

  final CommentStatus _value;
  // ignore: unused_field
  final $Res Function(CommentStatus) _then;
}

/// @nodoc
abstract class _$$_NewCommentStatusCopyWith<$Res> {
  factory _$$_NewCommentStatusCopyWith(
          _$_NewCommentStatus value, $Res Function(_$_NewCommentStatus) then) =
      __$$_NewCommentStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewCommentStatusCopyWithImpl<$Res>
    extends _$CommentStatusCopyWithImpl<$Res>
    implements _$$_NewCommentStatusCopyWith<$Res> {
  __$$_NewCommentStatusCopyWithImpl(
      _$_NewCommentStatus _value, $Res Function(_$_NewCommentStatus) _then)
      : super(_value, (v) => _then(v as _$_NewCommentStatus));

  @override
  _$_NewCommentStatus get _value => super._value as _$_NewCommentStatus;
}

/// @nodoc

class _$_NewCommentStatus implements _NewCommentStatus {
  const _$_NewCommentStatus();

  @override
  String toString() {
    return 'CommentStatus.isNew()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewCommentStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNew,
    required TResult Function() replied,
  }) {
    return isNew();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? isNew,
    TResult Function()? replied,
  }) {
    return isNew?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNew,
    TResult Function()? replied,
    required TResult orElse(),
  }) {
    if (isNew != null) {
      return isNew();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewCommentStatus value) isNew,
    required TResult Function(_RepliedCommentStatus value) replied,
  }) {
    return isNew(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewCommentStatus value)? isNew,
    TResult Function(_RepliedCommentStatus value)? replied,
  }) {
    return isNew?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewCommentStatus value)? isNew,
    TResult Function(_RepliedCommentStatus value)? replied,
    required TResult orElse(),
  }) {
    if (isNew != null) {
      return isNew(this);
    }
    return orElse();
  }
}

abstract class _NewCommentStatus implements CommentStatus {
  const factory _NewCommentStatus() = _$_NewCommentStatus;
}

/// @nodoc
abstract class _$$_RepliedCommentStatusCopyWith<$Res> {
  factory _$$_RepliedCommentStatusCopyWith(_$_RepliedCommentStatus value,
          $Res Function(_$_RepliedCommentStatus) then) =
      __$$_RepliedCommentStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RepliedCommentStatusCopyWithImpl<$Res>
    extends _$CommentStatusCopyWithImpl<$Res>
    implements _$$_RepliedCommentStatusCopyWith<$Res> {
  __$$_RepliedCommentStatusCopyWithImpl(_$_RepliedCommentStatus _value,
      $Res Function(_$_RepliedCommentStatus) _then)
      : super(_value, (v) => _then(v as _$_RepliedCommentStatus));

  @override
  _$_RepliedCommentStatus get _value => super._value as _$_RepliedCommentStatus;
}

/// @nodoc

class _$_RepliedCommentStatus implements _RepliedCommentStatus {
  const _$_RepliedCommentStatus();

  @override
  String toString() {
    return 'CommentStatus.replied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RepliedCommentStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isNew,
    required TResult Function() replied,
  }) {
    return replied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? isNew,
    TResult Function()? replied,
  }) {
    return replied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isNew,
    TResult Function()? replied,
    required TResult orElse(),
  }) {
    if (replied != null) {
      return replied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewCommentStatus value) isNew,
    required TResult Function(_RepliedCommentStatus value) replied,
  }) {
    return replied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NewCommentStatus value)? isNew,
    TResult Function(_RepliedCommentStatus value)? replied,
  }) {
    return replied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewCommentStatus value)? isNew,
    TResult Function(_RepliedCommentStatus value)? replied,
    required TResult orElse(),
  }) {
    if (replied != null) {
      return replied(this);
    }
    return orElse();
  }
}

abstract class _RepliedCommentStatus implements CommentStatus {
  const factory _RepliedCommentStatus() = _$_RepliedCommentStatus;
}
