// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return _Feed.fromJson(json);
}

/// @nodoc
mixin _$Feed {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDate)
  DateTime? get created_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedCopyWith<Feed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String message,
      @JsonKey(fromJson: parseDate) DateTime? created_time});
}

/// @nodoc
class _$FeedCopyWithImpl<$Res> implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  final Feed _value;
  // ignore: unused_field
  final $Res Function(Feed) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? created_time = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      created_time: created_time == freezed
          ? _value.created_time
          : created_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_FeedCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$$_FeedCopyWith(_$_Feed value, $Res Function(_$_Feed) then) =
      __$$_FeedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String message,
      @JsonKey(fromJson: parseDate) DateTime? created_time});
}

/// @nodoc
class __$$_FeedCopyWithImpl<$Res> extends _$FeedCopyWithImpl<$Res>
    implements _$$_FeedCopyWith<$Res> {
  __$$_FeedCopyWithImpl(_$_Feed _value, $Res Function(_$_Feed) _then)
      : super(_value, (v) => _then(v as _$_Feed));

  @override
  _$_Feed get _value => super._value as _$_Feed;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? created_time = freezed,
  }) {
    return _then(_$_Feed(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      created_time: created_time == freezed
          ? _value.created_time
          : created_time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_Feed implements _Feed {
  const _$_Feed(
      {required this.id,
      this.message = '',
      @JsonKey(fromJson: parseDate) this.created_time});

  factory _$_Feed.fromJson(Map<String, dynamic> json) => _$$_FeedFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey(fromJson: parseDate)
  final DateTime? created_time;

  @override
  String toString() {
    return 'Feed(id: $id, message: $message, created_time: $created_time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feed &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.created_time, created_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(created_time));

  @JsonKey(ignore: true)
  @override
  _$$_FeedCopyWith<_$_Feed> get copyWith =>
      __$$_FeedCopyWithImpl<_$_Feed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedToJson(
      this,
    );
  }
}

abstract class _Feed implements Feed {
  const factory _Feed(
      {required final String id,
      final String message,
      @JsonKey(fromJson: parseDate) final DateTime? created_time}) = _$_Feed;

  factory _Feed.fromJson(Map<String, dynamic> json) = _$_Feed.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  @JsonKey(fromJson: parseDate)
  DateTime? get created_time;
  @override
  @JsonKey(ignore: true)
  _$$_FeedCopyWith<_$_Feed> get copyWith => throw _privateConstructorUsedError;
}
