// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipient _$$_RecipientFromJson(Map<String, dynamic> json) => _$_Recipient(
      pk: json['pk'] as int,
      recipient_information: json['recipient_address'] as String?,
      contact_information: json['recipient_name'] as String?,
      phone_number: json['recipient_phone'] as String?,
    );

Map<String, dynamic> _$$_RecipientToJson(_$_Recipient instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'recipient_address': instance.recipient_information,
      'recipient_name': instance.contact_information,
      'recipient_phone': instance.phone_number,
    };
