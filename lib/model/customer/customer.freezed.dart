// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  @JsonKey(name: 'facebook_pk')
  int get pk => throw _privateConstructorUsedError;
  String? get profile_pic => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get recipient_information => throw _privateConstructorUsedError;
  String? get contact_information => throw _privateConstructorUsedError;
  String? get phone_number => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipient_ward_id')
  int? get ward_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'facebook_pk') int pk,
      String? profile_pic,
      String name,
      String? recipient_information,
      String? contact_information,
      String? phone_number,
      @JsonKey(name: 'recipient_ward_id') int? ward_id});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? profile_pic = freezed,
    Object? name = freezed,
    Object? recipient_information = freezed,
    Object? contact_information = freezed,
    Object? phone_number = freezed,
    Object? ward_id = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      profile_pic: profile_pic == freezed
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      ward_id: ward_id == freezed
          ? _value.ward_id
          : ward_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$$_CustomerCopyWith(
          _$_Customer value, $Res Function(_$_Customer) then) =
      __$$_CustomerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'facebook_pk') int pk,
      String? profile_pic,
      String name,
      String? recipient_information,
      String? contact_information,
      String? phone_number,
      @JsonKey(name: 'recipient_ward_id') int? ward_id});
}

/// @nodoc
class __$$_CustomerCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements _$$_CustomerCopyWith<$Res> {
  __$$_CustomerCopyWithImpl(
      _$_Customer _value, $Res Function(_$_Customer) _then)
      : super(_value, (v) => _then(v as _$_Customer));

  @override
  _$_Customer get _value => super._value as _$_Customer;

  @override
  $Res call({
    Object? pk = freezed,
    Object? profile_pic = freezed,
    Object? name = freezed,
    Object? recipient_information = freezed,
    Object? contact_information = freezed,
    Object? phone_number = freezed,
    Object? ward_id = freezed,
  }) {
    return _then(_$_Customer(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      profile_pic: profile_pic == freezed
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      ward_id: ward_id == freezed
          ? _value.ward_id
          : ward_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer extends _Customer {
  _$_Customer(
      {@JsonKey(name: 'facebook_pk') required this.pk,
      this.profile_pic,
      this.name = '',
      this.recipient_information,
      this.contact_information,
      this.phone_number,
      @JsonKey(name: 'recipient_ward_id') this.ward_id})
      : super._();

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  @JsonKey(name: 'facebook_pk')
  final int pk;
  @override
  final String? profile_pic;
  @override
  @JsonKey()
  final String name;
  @override
  final String? recipient_information;
  @override
  final String? contact_information;
  @override
  final String? phone_number;
  @override
  @JsonKey(name: 'recipient_ward_id')
  final int? ward_id;

  @override
  String toString() {
    return 'Customer(pk: $pk, profile_pic: $profile_pic, name: $name, recipient_information: $recipient_information, contact_information: $contact_information, phone_number: $phone_number, ward_id: $ward_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Customer &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality()
                .equals(other.profile_pic, profile_pic) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.recipient_information, recipient_information) &&
            const DeepCollectionEquality()
                .equals(other.contact_information, contact_information) &&
            const DeepCollectionEquality()
                .equals(other.phone_number, phone_number) &&
            const DeepCollectionEquality().equals(other.ward_id, ward_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(profile_pic),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(recipient_information),
      const DeepCollectionEquality().hash(contact_information),
      const DeepCollectionEquality().hash(phone_number),
      const DeepCollectionEquality().hash(ward_id));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      __$$_CustomerCopyWithImpl<_$_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(
      this,
    );
  }
}

abstract class _Customer extends Customer {
  factory _Customer(
      {@JsonKey(name: 'facebook_pk') required final int pk,
      final String? profile_pic,
      final String name,
      final String? recipient_information,
      final String? contact_information,
      final String? phone_number,
      @JsonKey(name: 'recipient_ward_id') final int? ward_id}) = _$_Customer;
  _Customer._() : super._();

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  @JsonKey(name: 'facebook_pk')
  int get pk;
  @override
  String? get profile_pic;
  @override
  String get name;
  @override
  String? get recipient_information;
  @override
  String? get contact_information;
  @override
  String? get phone_number;
  @override
  @JsonKey(name: 'recipient_ward_id')
  int? get ward_id;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}
