// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteMessageReply _$RemoteMessageReplyFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _RemoteMessageReply.fromJson(json);
    case 'story':
      return RemoteMessageStoryReply.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RemoteMessageReply',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RemoteMessageReply {
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String url) $default, {
    required TResult Function(String url) story,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String url)? $default, {
    TResult Function(String url)? story,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String url)? $default, {
    TResult Function(String url)? story,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RemoteMessageReply value) $default, {
    required TResult Function(RemoteMessageStoryReply value) story,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_RemoteMessageReply value)? $default, {
    TResult Function(RemoteMessageStoryReply value)? story,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RemoteMessageReply value)? $default, {
    TResult Function(RemoteMessageStoryReply value)? story,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteMessageReplyCopyWith<RemoteMessageReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteMessageReplyCopyWith<$Res> {
  factory $RemoteMessageReplyCopyWith(
          RemoteMessageReply value, $Res Function(RemoteMessageReply) then) =
      _$RemoteMessageReplyCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$RemoteMessageReplyCopyWithImpl<$Res>
    implements $RemoteMessageReplyCopyWith<$Res> {
  _$RemoteMessageReplyCopyWithImpl(this._value, this._then);

  final RemoteMessageReply _value;
  // ignore: unused_field
  final $Res Function(RemoteMessageReply) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RemoteMessageReplyCopyWith<$Res>
    implements $RemoteMessageReplyCopyWith<$Res> {
  factory _$$_RemoteMessageReplyCopyWith(_$_RemoteMessageReply value,
          $Res Function(_$_RemoteMessageReply) then) =
      __$$_RemoteMessageReplyCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$$_RemoteMessageReplyCopyWithImpl<$Res>
    extends _$RemoteMessageReplyCopyWithImpl<$Res>
    implements _$$_RemoteMessageReplyCopyWith<$Res> {
  __$$_RemoteMessageReplyCopyWithImpl(
      _$_RemoteMessageReply _value, $Res Function(_$_RemoteMessageReply) _then)
      : super(_value, (v) => _then(v as _$_RemoteMessageReply));

  @override
  _$_RemoteMessageReply get _value => super._value as _$_RemoteMessageReply;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_RemoteMessageReply(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteMessageReply implements _RemoteMessageReply {
  _$_RemoteMessageReply(this.url, {final String? $type})
      : $type = $type ?? 'default';

  factory _$_RemoteMessageReply.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteMessageReplyFromJson(json);

  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RemoteMessageReply(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteMessageReply &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_RemoteMessageReplyCopyWith<_$_RemoteMessageReply> get copyWith =>
      __$$_RemoteMessageReplyCopyWithImpl<_$_RemoteMessageReply>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String url) $default, {
    required TResult Function(String url) story,
  }) {
    return $default(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String url)? $default, {
    TResult Function(String url)? story,
  }) {
    return $default?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String url)? $default, {
    TResult Function(String url)? story,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RemoteMessageReply value) $default, {
    required TResult Function(RemoteMessageStoryReply value) story,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_RemoteMessageReply value)? $default, {
    TResult Function(RemoteMessageStoryReply value)? story,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RemoteMessageReply value)? $default, {
    TResult Function(RemoteMessageStoryReply value)? story,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteMessageReplyToJson(
      this,
    );
  }
}

abstract class _RemoteMessageReply implements RemoteMessageReply {
  factory _RemoteMessageReply(final String url) = _$_RemoteMessageReply;

  factory _RemoteMessageReply.fromJson(Map<String, dynamic> json) =
      _$_RemoteMessageReply.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteMessageReplyCopyWith<_$_RemoteMessageReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteMessageStoryReplyCopyWith<$Res>
    implements $RemoteMessageReplyCopyWith<$Res> {
  factory _$$RemoteMessageStoryReplyCopyWith(_$RemoteMessageStoryReply value,
          $Res Function(_$RemoteMessageStoryReply) then) =
      __$$RemoteMessageStoryReplyCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$$RemoteMessageStoryReplyCopyWithImpl<$Res>
    extends _$RemoteMessageReplyCopyWithImpl<$Res>
    implements _$$RemoteMessageStoryReplyCopyWith<$Res> {
  __$$RemoteMessageStoryReplyCopyWithImpl(_$RemoteMessageStoryReply _value,
      $Res Function(_$RemoteMessageStoryReply) _then)
      : super(_value, (v) => _then(v as _$RemoteMessageStoryReply));

  @override
  _$RemoteMessageStoryReply get _value =>
      super._value as _$RemoteMessageStoryReply;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$RemoteMessageStoryReply(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoteMessageStoryReply implements RemoteMessageStoryReply {
  _$RemoteMessageStoryReply(this.url, {final String? $type})
      : $type = $type ?? 'story';

  factory _$RemoteMessageStoryReply.fromJson(Map<String, dynamic> json) =>
      _$$RemoteMessageStoryReplyFromJson(json);

  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RemoteMessageReply.story(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteMessageStoryReply &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$RemoteMessageStoryReplyCopyWith<_$RemoteMessageStoryReply> get copyWith =>
      __$$RemoteMessageStoryReplyCopyWithImpl<_$RemoteMessageStoryReply>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String url) $default, {
    required TResult Function(String url) story,
  }) {
    return story(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String url)? $default, {
    TResult Function(String url)? story,
  }) {
    return story?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String url)? $default, {
    TResult Function(String url)? story,
    required TResult orElse(),
  }) {
    if (story != null) {
      return story(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RemoteMessageReply value) $default, {
    required TResult Function(RemoteMessageStoryReply value) story,
  }) {
    return story(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_RemoteMessageReply value)? $default, {
    TResult Function(RemoteMessageStoryReply value)? story,
  }) {
    return story?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RemoteMessageReply value)? $default, {
    TResult Function(RemoteMessageStoryReply value)? story,
    required TResult orElse(),
  }) {
    if (story != null) {
      return story(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoteMessageStoryReplyToJson(
      this,
    );
  }
}

abstract class RemoteMessageStoryReply implements RemoteMessageReply {
  factory RemoteMessageStoryReply(final String url) = _$RemoteMessageStoryReply;

  factory RemoteMessageStoryReply.fromJson(Map<String, dynamic> json) =
      _$RemoteMessageStoryReply.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$RemoteMessageStoryReplyCopyWith<_$RemoteMessageStoryReply> get copyWith =>
      throw _privateConstructorUsedError;
}
