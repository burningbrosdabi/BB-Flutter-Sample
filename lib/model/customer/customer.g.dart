// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      pk: json['facebook_pk'] as int,
      profile_pic: json['profile_pic'] as String?,
      name: json['name'] as String? ?? '',
      recipient_information: json['recipient_information'] as String?,
      contact_information: json['contact_information'] as String?,
      phone_number: json['phone_number'] as String?,
      ward_id: json['recipient_ward_id'] as int?,
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'facebook_pk': instance.pk,
      'profile_pic': instance.profile_pic,
      'name': instance.name,
      'recipient_information': instance.recipient_information,
      'contact_information': instance.contact_information,
      'phone_number': instance.phone_number,
      'recipient_ward_id': instance.ward_id,
    };
