// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatItem _$ChatItemFromJson(Map<String, dynamic> json) {
  return _ChatItem.fromJson(json);
}

/// @nodoc
mixin _$ChatItem {
  String get conversation_id => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'attachments',
      readValue: ChatItem.readAttachment,
      fromJson: ChatItem.parseAttachment)
  List<Attachment>? get attachments => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: Status.UNREAD)
  Status get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDate)
  DateTime get modified => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'acquisition_source', unknownEnumValue: AcquisitionSource.FACEBOOK)
  AcquisitionSource get source => throw _privateConstructorUsedError;
  @JsonKey(readValue: ChatItem.readProfilePic)
  String? get profile_pic => throw _privateConstructorUsedError;
  @JsonKey(readValue: ChatItem.readCustomerName)
  String? get customer_name => throw _privateConstructorUsedError;
  bool get is_last_sent_from_page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatItemCopyWith<ChatItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatItemCopyWith<$Res> {
  factory $ChatItemCopyWith(ChatItem value, $Res Function(ChatItem) then) =
      _$ChatItemCopyWithImpl<$Res>;
  $Res call(
      {String conversation_id,
      String page,
      @JsonKey(name: 'attachments', readValue: ChatItem.readAttachment, fromJson: ChatItem.parseAttachment)
          List<Attachment>? attachments,
      @JsonKey(name: 'latest_message')
          String? message,
      @JsonKey(unknownEnumValue: Status.UNREAD)
          Status status,
      @JsonKey(fromJson: parseDate)
          DateTime modified,
      @JsonKey(name: 'acquisition_source', unknownEnumValue: AcquisitionSource.FACEBOOK)
          AcquisitionSource source,
      @JsonKey(readValue: ChatItem.readProfilePic)
          String? profile_pic,
      @JsonKey(readValue: ChatItem.readCustomerName)
          String? customer_name,
      bool is_last_sent_from_page});
}

/// @nodoc
class _$ChatItemCopyWithImpl<$Res> implements $ChatItemCopyWith<$Res> {
  _$ChatItemCopyWithImpl(this._value, this._then);

  final ChatItem _value;
  // ignore: unused_field
  final $Res Function(ChatItem) _then;

  @override
  $Res call({
    Object? conversation_id = freezed,
    Object? page = freezed,
    Object? attachments = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? modified = freezed,
    Object? source = freezed,
    Object? profile_pic = freezed,
    Object? customer_name = freezed,
    Object? is_last_sent_from_page = freezed,
  }) {
    return _then(_value.copyWith(
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as AcquisitionSource,
      profile_pic: profile_pic == freezed
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_name: customer_name == freezed
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_last_sent_from_page: is_last_sent_from_page == freezed
          ? _value.is_last_sent_from_page
          : is_last_sent_from_page // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatItemCopyWith<$Res> implements $ChatItemCopyWith<$Res> {
  factory _$$_ChatItemCopyWith(
          _$_ChatItem value, $Res Function(_$_ChatItem) then) =
      __$$_ChatItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String conversation_id,
      String page,
      @JsonKey(name: 'attachments', readValue: ChatItem.readAttachment, fromJson: ChatItem.parseAttachment)
          List<Attachment>? attachments,
      @JsonKey(name: 'latest_message')
          String? message,
      @JsonKey(unknownEnumValue: Status.UNREAD)
          Status status,
      @JsonKey(fromJson: parseDate)
          DateTime modified,
      @JsonKey(name: 'acquisition_source', unknownEnumValue: AcquisitionSource.FACEBOOK)
          AcquisitionSource source,
      @JsonKey(readValue: ChatItem.readProfilePic)
          String? profile_pic,
      @JsonKey(readValue: ChatItem.readCustomerName)
          String? customer_name,
      bool is_last_sent_from_page});
}

/// @nodoc
class __$$_ChatItemCopyWithImpl<$Res> extends _$ChatItemCopyWithImpl<$Res>
    implements _$$_ChatItemCopyWith<$Res> {
  __$$_ChatItemCopyWithImpl(
      _$_ChatItem _value, $Res Function(_$_ChatItem) _then)
      : super(_value, (v) => _then(v as _$_ChatItem));

  @override
  _$_ChatItem get _value => super._value as _$_ChatItem;

  @override
  $Res call({
    Object? conversation_id = freezed,
    Object? page = freezed,
    Object? attachments = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? modified = freezed,
    Object? source = freezed,
    Object? profile_pic = freezed,
    Object? customer_name = freezed,
    Object? is_last_sent_from_page = freezed,
  }) {
    return _then(_$_ChatItem(
      conversation_id: conversation_id == freezed
          ? _value.conversation_id
          : conversation_id // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as AcquisitionSource,
      profile_pic: profile_pic == freezed
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_name: customer_name == freezed
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      is_last_sent_from_page: is_last_sent_from_page == freezed
          ? _value.is_last_sent_from_page
          : is_last_sent_from_page // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_ChatItem extends _ChatItem {
  const _$_ChatItem(
      {required this.conversation_id,
      this.page = '',
      @JsonKey(name: 'attachments', readValue: ChatItem.readAttachment, fromJson: ChatItem.parseAttachment)
          final List<Attachment>? attachments,
      @JsonKey(name: 'latest_message')
          required this.message,
      @JsonKey(unknownEnumValue: Status.UNREAD)
          this.status = Status.UNREAD,
      @JsonKey(fromJson: parseDate)
          required this.modified,
      @JsonKey(name: 'acquisition_source', unknownEnumValue: AcquisitionSource.FACEBOOK)
          required this.source,
      @JsonKey(readValue: ChatItem.readProfilePic)
          this.profile_pic,
      @JsonKey(readValue: ChatItem.readCustomerName)
          this.customer_name,
      this.is_last_sent_from_page = false})
      : _attachments = attachments,
        super._();

  factory _$_ChatItem.fromJson(Map<String, dynamic> json) =>
      _$$_ChatItemFromJson(json);

  @override
  final String conversation_id;
  @override
  @JsonKey()
  final String page;
  final List<Attachment>? _attachments;
  @override
  @JsonKey(
      name: 'attachments',
      readValue: ChatItem.readAttachment,
      fromJson: ChatItem.parseAttachment)
  List<Attachment>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'latest_message')
  final String? message;
  @override
  @JsonKey(unknownEnumValue: Status.UNREAD)
  final Status status;
  @override
  @JsonKey(fromJson: parseDate)
  final DateTime modified;
  @override
  @JsonKey(
      name: 'acquisition_source', unknownEnumValue: AcquisitionSource.FACEBOOK)
  final AcquisitionSource source;
  @override
  @JsonKey(readValue: ChatItem.readProfilePic)
  final String? profile_pic;
  @override
  @JsonKey(readValue: ChatItem.readCustomerName)
  final String? customer_name;
  @override
  @JsonKey()
  final bool is_last_sent_from_page;

  @override
  String toString() {
    return 'ChatItem(conversation_id: $conversation_id, page: $page, attachments: $attachments, message: $message, status: $status, modified: $modified, source: $source, profile_pic: $profile_pic, customer_name: $customer_name, is_last_sent_from_page: $is_last_sent_from_page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatItem &&
            const DeepCollectionEquality()
                .equals(other.conversation_id, conversation_id) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.profile_pic, profile_pic) &&
            const DeepCollectionEquality()
                .equals(other.customer_name, customer_name) &&
            const DeepCollectionEquality()
                .equals(other.is_last_sent_from_page, is_last_sent_from_page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(conversation_id),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(modified),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(profile_pic),
      const DeepCollectionEquality().hash(customer_name),
      const DeepCollectionEquality().hash(is_last_sent_from_page));

  @JsonKey(ignore: true)
  @override
  _$$_ChatItemCopyWith<_$_ChatItem> get copyWith =>
      __$$_ChatItemCopyWithImpl<_$_ChatItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatItemToJson(
      this,
    );
  }
}

abstract class _ChatItem extends ChatItem {
  const factory _ChatItem(
      {required final String conversation_id,
      final String page,
      @JsonKey(name: 'attachments', readValue: ChatItem.readAttachment, fromJson: ChatItem.parseAttachment)
          final List<Attachment>? attachments,
      @JsonKey(name: 'latest_message')
          required final String? message,
      @JsonKey(unknownEnumValue: Status.UNREAD)
          final Status status,
      @JsonKey(fromJson: parseDate)
          required final DateTime modified,
      @JsonKey(name: 'acquisition_source', unknownEnumValue: AcquisitionSource.FACEBOOK)
          required final AcquisitionSource source,
      @JsonKey(readValue: ChatItem.readProfilePic)
          final String? profile_pic,
      @JsonKey(readValue: ChatItem.readCustomerName)
          final String? customer_name,
      final bool is_last_sent_from_page}) = _$_ChatItem;
  const _ChatItem._() : super._();

  factory _ChatItem.fromJson(Map<String, dynamic> json) = _$_ChatItem.fromJson;

  @override
  String get conversation_id;
  @override
  String get page;
  @override
  @JsonKey(
      name: 'attachments',
      readValue: ChatItem.readAttachment,
      fromJson: ChatItem.parseAttachment)
  List<Attachment>? get attachments;
  @override
  @JsonKey(name: 'latest_message')
  String? get message;
  @override
  @JsonKey(unknownEnumValue: Status.UNREAD)
  Status get status;
  @override
  @JsonKey(fromJson: parseDate)
  DateTime get modified;
  @override
  @JsonKey(
      name: 'acquisition_source', unknownEnumValue: AcquisitionSource.FACEBOOK)
  AcquisitionSource get source;
  @override
  @JsonKey(readValue: ChatItem.readProfilePic)
  String? get profile_pic;
  @override
  @JsonKey(readValue: ChatItem.readCustomerName)
  String? get customer_name;
  @override
  bool get is_last_sent_from_page;
  @override
  @JsonKey(ignore: true)
  _$$_ChatItemCopyWith<_$_ChatItem> get copyWith =>
      throw _privateConstructorUsedError;
}
