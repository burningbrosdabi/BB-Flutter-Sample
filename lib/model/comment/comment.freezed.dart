// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String get comment_id => throw _privateConstructorUsedError;
  String get customer_id => throw _privateConstructorUsedError;
  String get comment_text => throw _privateConstructorUsedError;
  String? get feed_id => throw _privateConstructorUsedError;
  String? get feed_url => throw _privateConstructorUsedError;
  String? get comment_photo => throw _privateConstructorUsedError;
  String? get private_replied_text => throw _privateConstructorUsedError;
  List<Comment> get replies => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_username")
  String get username => throw _privateConstructorUsedError;
  @TimestampConverter()
  int get comment_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  CommentStatusEnum get statusEnum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call(
      {String comment_id,
      String customer_id,
      String comment_text,
      String? feed_id,
      String? feed_url,
      String? comment_photo,
      String? private_replied_text,
      List<Comment> replies,
      @JsonKey(name: "customer_username") String username,
      @TimestampConverter() int comment_at,
      @JsonKey(name: 'status') CommentStatusEnum statusEnum});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object? comment_id = freezed,
    Object? customer_id = freezed,
    Object? comment_text = freezed,
    Object? feed_id = freezed,
    Object? feed_url = freezed,
    Object? comment_photo = freezed,
    Object? private_replied_text = freezed,
    Object? replies = freezed,
    Object? username = freezed,
    Object? comment_at = freezed,
    Object? statusEnum = freezed,
  }) {
    return _then(_value.copyWith(
      comment_id: comment_id == freezed
          ? _value.comment_id
          : comment_id // ignore: cast_nullable_to_non_nullable
              as String,
      customer_id: customer_id == freezed
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as String,
      comment_text: comment_text == freezed
          ? _value.comment_text
          : comment_text // ignore: cast_nullable_to_non_nullable
              as String,
      feed_id: feed_id == freezed
          ? _value.feed_id
          : feed_id // ignore: cast_nullable_to_non_nullable
              as String?,
      feed_url: feed_url == freezed
          ? _value.feed_url
          : feed_url // ignore: cast_nullable_to_non_nullable
              as String?,
      comment_photo: comment_photo == freezed
          ? _value.comment_photo
          : comment_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      private_replied_text: private_replied_text == freezed
          ? _value.private_replied_text
          : private_replied_text // ignore: cast_nullable_to_non_nullable
              as String?,
      replies: replies == freezed
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      comment_at: comment_at == freezed
          ? _value.comment_at
          : comment_at // ignore: cast_nullable_to_non_nullable
              as int,
      statusEnum: statusEnum == freezed
          ? _value.statusEnum
          : statusEnum // ignore: cast_nullable_to_non_nullable
              as CommentStatusEnum,
    ));
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String comment_id,
      String customer_id,
      String comment_text,
      String? feed_id,
      String? feed_url,
      String? comment_photo,
      String? private_replied_text,
      List<Comment> replies,
      @JsonKey(name: "customer_username") String username,
      @TimestampConverter() int comment_at,
      @JsonKey(name: 'status') CommentStatusEnum statusEnum});
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, (v) => _then(v as _$_Comment));

  @override
  _$_Comment get _value => super._value as _$_Comment;

  @override
  $Res call({
    Object? comment_id = freezed,
    Object? customer_id = freezed,
    Object? comment_text = freezed,
    Object? feed_id = freezed,
    Object? feed_url = freezed,
    Object? comment_photo = freezed,
    Object? private_replied_text = freezed,
    Object? replies = freezed,
    Object? username = freezed,
    Object? comment_at = freezed,
    Object? statusEnum = freezed,
  }) {
    return _then(_$_Comment(
      comment_id: comment_id == freezed
          ? _value.comment_id
          : comment_id // ignore: cast_nullable_to_non_nullable
              as String,
      customer_id: customer_id == freezed
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as String,
      comment_text: comment_text == freezed
          ? _value.comment_text
          : comment_text // ignore: cast_nullable_to_non_nullable
              as String,
      feed_id: feed_id == freezed
          ? _value.feed_id
          : feed_id // ignore: cast_nullable_to_non_nullable
              as String?,
      feed_url: feed_url == freezed
          ? _value.feed_url
          : feed_url // ignore: cast_nullable_to_non_nullable
              as String?,
      comment_photo: comment_photo == freezed
          ? _value.comment_photo
          : comment_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      private_replied_text: private_replied_text == freezed
          ? _value.private_replied_text
          : private_replied_text // ignore: cast_nullable_to_non_nullable
              as String?,
      replies: replies == freezed
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      comment_at: comment_at == freezed
          ? _value.comment_at
          : comment_at // ignore: cast_nullable_to_non_nullable
              as int,
      statusEnum: statusEnum == freezed
          ? _value.statusEnum
          : statusEnum // ignore: cast_nullable_to_non_nullable
              as CommentStatusEnum,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_Comment extends _Comment {
  const _$_Comment(
      {required this.comment_id,
      required this.customer_id,
      this.comment_text = '',
      this.feed_id,
      this.feed_url,
      this.comment_photo,
      this.private_replied_text,
      final List<Comment> replies = const [],
      @JsonKey(name: "customer_username") required this.username,
      @TimestampConverter() this.comment_at = 0,
      @JsonKey(name: 'status') this.statusEnum = CommentStatusEnum.NEW})
      : _replies = replies,
        super._();

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final String comment_id;
  @override
  final String customer_id;
  @override
  @JsonKey()
  final String comment_text;
  @override
  final String? feed_id;
  @override
  final String? feed_url;
  @override
  final String? comment_photo;
  @override
  final String? private_replied_text;
  final List<Comment> _replies;
  @override
  @JsonKey()
  List<Comment> get replies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  @JsonKey(name: "customer_username")
  final String username;
  @override
  @JsonKey()
  @TimestampConverter()
  final int comment_at;
  @override
  @JsonKey(name: 'status')
  final CommentStatusEnum statusEnum;

  @override
  String toString() {
    return 'Comment(comment_id: $comment_id, customer_id: $customer_id, comment_text: $comment_text, feed_id: $feed_id, feed_url: $feed_url, comment_photo: $comment_photo, private_replied_text: $private_replied_text, replies: $replies, username: $username, comment_at: $comment_at, statusEnum: $statusEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            const DeepCollectionEquality()
                .equals(other.comment_id, comment_id) &&
            const DeepCollectionEquality()
                .equals(other.customer_id, customer_id) &&
            const DeepCollectionEquality()
                .equals(other.comment_text, comment_text) &&
            const DeepCollectionEquality().equals(other.feed_id, feed_id) &&
            const DeepCollectionEquality().equals(other.feed_url, feed_url) &&
            const DeepCollectionEquality()
                .equals(other.comment_photo, comment_photo) &&
            const DeepCollectionEquality()
                .equals(other.private_replied_text, private_replied_text) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.comment_at, comment_at) &&
            const DeepCollectionEquality()
                .equals(other.statusEnum, statusEnum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comment_id),
      const DeepCollectionEquality().hash(customer_id),
      const DeepCollectionEquality().hash(comment_text),
      const DeepCollectionEquality().hash(feed_id),
      const DeepCollectionEquality().hash(feed_url),
      const DeepCollectionEquality().hash(comment_photo),
      const DeepCollectionEquality().hash(private_replied_text),
      const DeepCollectionEquality().hash(_replies),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(comment_at),
      const DeepCollectionEquality().hash(statusEnum));

  @JsonKey(ignore: true)
  @override
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment extends Comment {
  const factory _Comment(
          {required final String comment_id,
          required final String customer_id,
          final String comment_text,
          final String? feed_id,
          final String? feed_url,
          final String? comment_photo,
          final String? private_replied_text,
          final List<Comment> replies,
          @JsonKey(name: "customer_username") required final String username,
          @TimestampConverter() final int comment_at,
          @JsonKey(name: 'status') final CommentStatusEnum statusEnum}) =
      _$_Comment;
  const _Comment._() : super._();

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  String get comment_id;
  @override
  String get customer_id;
  @override
  String get comment_text;
  @override
  String? get feed_id;
  @override
  String? get feed_url;
  @override
  String? get comment_photo;
  @override
  String? get private_replied_text;
  @override
  List<Comment> get replies;
  @override
  @JsonKey(name: "customer_username")
  String get username;
  @override
  @TimestampConverter()
  int get comment_at;
  @override
  @JsonKey(name: 'status')
  CommentStatusEnum get statusEnum;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
