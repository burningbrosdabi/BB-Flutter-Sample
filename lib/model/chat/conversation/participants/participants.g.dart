// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Participant _$$_ParticipantFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_Participant',
      json,
      ($checkedConvert) {
        final val = _$_Participant(
          sender_id: $checkedConvert('sender_id', (v) => v as String),
          sender_name:
              $checkedConvert('sender_name', (v) => v as String? ?? ''),
          receiver_id: $checkedConvert('receiver_id', (v) => v as String),
          receiver_name:
              $checkedConvert('receiver_name', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ParticipantToJson(_$_Participant instance) =>
    <String, dynamic>{
      'sender_id': instance.sender_id,
      'sender_name': instance.sender_name,
      'receiver_id': instance.receiver_id,
      'receiver_name': instance.receiver_name,
    };
