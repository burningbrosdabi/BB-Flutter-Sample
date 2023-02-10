// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recipient _$RecipientFromJson(Map<String, dynamic> json) {
  return _Recipient.fromJson(json);
}

/// @nodoc
mixin _$Recipient {
  int get pk => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipient_address')
  String? get recipient_information => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipient_name')
  String? get contact_information => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipient_phone')
  String? get phone_number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipientCopyWith<Recipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientCopyWith<$Res> {
  factory $RecipientCopyWith(Recipient value, $Res Function(Recipient) then) =
      _$RecipientCopyWithImpl<$Res>;
  $Res call(
      {int pk,
      @JsonKey(name: 'recipient_address') String? recipient_information,
      @JsonKey(name: 'recipient_name') String? contact_information,
      @JsonKey(name: 'recipient_phone') String? phone_number});
}

/// @nodoc
class _$RecipientCopyWithImpl<$Res> implements $RecipientCopyWith<$Res> {
  _$RecipientCopyWithImpl(this._value, this._then);

  final Recipient _value;
  // ignore: unused_field
  final $Res Function(Recipient) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? recipient_information = freezed,
    Object? contact_information = freezed,
    Object? phone_number = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      recipient_information: recipient_information == freezed
          ? _value.recipient_information
          : recipient_information // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_information: contact_information == freezed
          ? _value.contact_information
          : contact_information // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: phone_number == freezed
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RecipientCopyWith<$Res> implements $RecipientCopyWith<$Res> {
  factory _$$_RecipientCopyWith(
          _$_Recipient value, $Res Function(_$_Recipient) then) =
      __$$_RecipientCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pk,
      @JsonKey(name: 'recipient_address') String? recipient_information,
      @JsonKey(name: 'recipient_name') String? contact_information,
      @JsonKey(name: 'recipient_phone') String? phone_number});
}

/// @nodoc
class __$$_RecipientCopyWithImpl<$Res> extends _$RecipientCopyWithImpl<$Res>
    implements _$$_RecipientCopyWith<$Res> {
  __$$_RecipientCopyWithImpl(
      _$_Recipient _value, $Res Function(_$_Recipient) _then)
      : super(_value, (v) => _then(v as _$_Recipient));

  @override
  _$_Recipient get _value => super._value as _$_Recipient;

  @override
  $Res call({
    Object? pk = freezed,
    Object? recipient_information = freezed,
    Object? contact_information = freezed,
    Object? phone_number = freezed,
  }) {
    return _then(_$_Recipient(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      recipient_information: recipient_information == freezed
          ? _value.recipient_information
          : recipient_information // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_information: contact_information == freezed
          ? _value.contact_information
          : contact_information // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: phone_number == freezed
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Recipient extends _Recipient {
  const _$_Recipient(
      {required this.pk,
      @JsonKey(name: 'recipient_address') this.recipient_information,
      @JsonKey(name: 'recipient_name') this.contact_information,
      @JsonKey(name: 'recipient_phone') this.phone_number})
      : super._();

  factory _$_Recipient.fromJson(Map<String, dynamic> json) =>
      _$$_RecipientFromJson(json);

  @override
  final int pk;
  @override
  @JsonKey(name: 'recipient_address')
  final String? recipient_information;
  @override
  @JsonKey(name: 'recipient_name')
  final String? contact_information;
  @override
  @JsonKey(name: 'recipient_phone')
  final String? phone_number;

  @override
  String toString() {
    return 'Recipient(pk: $pk, recipient_information: $recipient_information, contact_information: $contact_information, phone_number: $phone_number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recipient &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality()
                .equals(other.recipient_information, recipient_information) &&
            const DeepCollectionEquality()
                .equals(other.contact_information, contact_information) &&
            const DeepCollectionEquality()
                .equals(other.phone_number, phone_number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(recipient_information),
      const DeepCollectionEquality().hash(contact_information),
      const DeepCollectionEquality().hash(phone_number));

  @JsonKey(ignore: true)
  @override
  _$$_RecipientCopyWith<_$_Recipient> get copyWith =>
      __$$_RecipientCopyWithImpl<_$_Recipient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipientToJson(
      this,
    );
  }
}

abstract class _Recipient extends Recipient {
  const factory _Recipient(
      {required final int pk,
      @JsonKey(name: 'recipient_address')
          final String? recipient_information,
      @JsonKey(name: 'recipient_name')
          final String? contact_information,
      @JsonKey(name: 'recipient_phone')
          final String? phone_number}) = _$_Recipient;
  const _Recipient._() : super._();

  factory _Recipient.fromJson(Map<String, dynamic> json) =
      _$_Recipient.fromJson;

  @override
  int get pk;
  @override
  @JsonKey(name: 'recipient_address')
  String? get recipient_information;
  @override
  @JsonKey(name: 'recipient_name')
  String? get contact_information;
  @override
  @JsonKey(name: 'recipient_phone')
  String? get phone_number;
  @override
  @JsonKey(ignore: true)
  _$$_RecipientCopyWith<_$_Recipient> get copyWith =>
      throw _privateConstructorUsedError;
}
