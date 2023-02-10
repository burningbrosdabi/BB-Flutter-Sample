// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatItem _$$_ChatItemFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ChatItem',
      json,
      ($checkedConvert) {
        final val = _$_ChatItem(
          conversation_id:
              $checkedConvert('conversation_id', (v) => v as String),
          page: $checkedConvert('page', (v) => v as String? ?? ''),
          attachments: $checkedConvert(
            'attachments',
            (v) => ChatItem.parseAttachment(v),
            readValue: ChatItem.readAttachment,
          ),
          message: $checkedConvert('latest_message', (v) => v as String?),
          status: $checkedConvert(
              'status',
              (v) =>
                  $enumDecodeNullable(_$StatusEnumMap, v,
                      unknownValue: Status.UNREAD) ??
                  Status.UNREAD),
          modified: $checkedConvert('modified', (v) => parseDate(v)),
          source: $checkedConvert(
              'acquisition_source',
              (v) => $enumDecode(_$AcquisitionSourceEnumMap, v,
                  unknownValue: AcquisitionSource.FACEBOOK)),
          profile_pic: $checkedConvert(
            'profile_pic',
            (v) => v as String?,
            readValue: ChatItem.readProfilePic,
          ),
          customer_name: $checkedConvert(
            'customer_name',
            (v) => v as String?,
            readValue: ChatItem.readCustomerName,
          ),
          is_last_sent_from_page: $checkedConvert(
              'is_last_sent_from_page', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'message': 'latest_message',
        'source': 'acquisition_source'
      },
    );

Map<String, dynamic> _$$_ChatItemToJson(_$_ChatItem instance) =>
    <String, dynamic>{
      'conversation_id': instance.conversation_id,
      'page': instance.page,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'latest_message': instance.message,
      'status': _$StatusEnumMap[instance.status]!,
      'modified': instance.modified.toIso8601String(),
      'acquisition_source': _$AcquisitionSourceEnumMap[instance.source]!,
      'profile_pic': instance.profile_pic,
      'customer_name': instance.customer_name,
      'is_last_sent_from_page': instance.is_last_sent_from_page,
    };

const _$StatusEnumMap = {
  Status.UNKNOWN: 'UNKNOWN',
  Status.UNREAD: 'UNREAD',
  Status.UNANSWERED: 'UNANSWERED',
  Status.ANSWERED: 'ANSWERED',
  Status.CLOSED: 'CLOSED',
  Status.LEAVE: 'LEAVE',
};

const _$AcquisitionSourceEnumMap = {
  AcquisitionSource.INSTAGRAM: 'INSTAGRAM',
  AcquisitionSource.FACEBOOK: 'FACEBOOK',
};
