// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthMethod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebook,
    required TResult Function() apple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? apple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? apple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthMethodFacebook value) facebook,
    required TResult Function(_AuthMethodApple value) apple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthMethodFacebook value)? facebook,
    TResult Function(_AuthMethodApple value)? apple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthMethodFacebook value)? facebook,
    TResult Function(_AuthMethodApple value)? apple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthMethodCopyWith<$Res> {
  factory $AuthMethodCopyWith(
          AuthMethod value, $Res Function(AuthMethod) then) =
      _$AuthMethodCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthMethodCopyWithImpl<$Res> implements $AuthMethodCopyWith<$Res> {
  _$AuthMethodCopyWithImpl(this._value, this._then);

  final AuthMethod _value;
  // ignore: unused_field
  final $Res Function(AuthMethod) _then;
}

/// @nodoc
abstract class _$$_AuthMethodFacebookCopyWith<$Res> {
  factory _$$_AuthMethodFacebookCopyWith(_$_AuthMethodFacebook value,
          $Res Function(_$_AuthMethodFacebook) then) =
      __$$_AuthMethodFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthMethodFacebookCopyWithImpl<$Res>
    extends _$AuthMethodCopyWithImpl<$Res>
    implements _$$_AuthMethodFacebookCopyWith<$Res> {
  __$$_AuthMethodFacebookCopyWithImpl(
      _$_AuthMethodFacebook _value, $Res Function(_$_AuthMethodFacebook) _then)
      : super(_value, (v) => _then(v as _$_AuthMethodFacebook));

  @override
  _$_AuthMethodFacebook get _value => super._value as _$_AuthMethodFacebook;
}

/// @nodoc

class _$_AuthMethodFacebook implements _AuthMethodFacebook {
  const _$_AuthMethodFacebook();

  @override
  String toString() {
    return 'AuthMethod.facebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthMethodFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebook,
    required TResult Function() apple,
  }) {
    return facebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? apple,
  }) {
    return facebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? apple,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthMethodFacebook value) facebook,
    required TResult Function(_AuthMethodApple value) apple,
  }) {
    return facebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthMethodFacebook value)? facebook,
    TResult Function(_AuthMethodApple value)? apple,
  }) {
    return facebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthMethodFacebook value)? facebook,
    TResult Function(_AuthMethodApple value)? apple,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook(this);
    }
    return orElse();
  }
}

abstract class _AuthMethodFacebook implements AuthMethod {
  const factory _AuthMethodFacebook() = _$_AuthMethodFacebook;
}

/// @nodoc
abstract class _$$_AuthMethodAppleCopyWith<$Res> {
  factory _$$_AuthMethodAppleCopyWith(
          _$_AuthMethodApple value, $Res Function(_$_AuthMethodApple) then) =
      __$$_AuthMethodAppleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthMethodAppleCopyWithImpl<$Res>
    extends _$AuthMethodCopyWithImpl<$Res>
    implements _$$_AuthMethodAppleCopyWith<$Res> {
  __$$_AuthMethodAppleCopyWithImpl(
      _$_AuthMethodApple _value, $Res Function(_$_AuthMethodApple) _then)
      : super(_value, (v) => _then(v as _$_AuthMethodApple));

  @override
  _$_AuthMethodApple get _value => super._value as _$_AuthMethodApple;
}

/// @nodoc

class _$_AuthMethodApple implements _AuthMethodApple {
  const _$_AuthMethodApple();

  @override
  String toString() {
    return 'AuthMethod.apple()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthMethodApple);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() facebook,
    required TResult Function() apple,
  }) {
    return apple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? apple,
  }) {
    return apple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? facebook,
    TResult Function()? apple,
    required TResult orElse(),
  }) {
    if (apple != null) {
      return apple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthMethodFacebook value) facebook,
    required TResult Function(_AuthMethodApple value) apple,
  }) {
    return apple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthMethodFacebook value)? facebook,
    TResult Function(_AuthMethodApple value)? apple,
  }) {
    return apple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthMethodFacebook value)? facebook,
    TResult Function(_AuthMethodApple value)? apple,
    required TResult orElse(),
  }) {
    if (apple != null) {
      return apple(this);
    }
    return orElse();
  }
}

abstract class _AuthMethodApple implements AuthMethod {
  const factory _AuthMethodApple() = _$_AuthMethodApple;
}
