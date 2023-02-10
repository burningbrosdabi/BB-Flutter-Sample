// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Messenger _$$_MessengerFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Messenger',
      json,
      ($checkedConvert) {
        final val = _$_Messenger(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => Conversation.fromJson(e as Map<String, dynamic>))
                  .toList()),
          paging: $checkedConvert(
              'paging',
              (v) => v == null
                  ? null
                  : Paging.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MessengerToJson(_$_Messenger instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'paging': instance.paging?.toJson(),
    };

_$_Paging _$$_PagingFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Paging',
      json,
      ($checkedConvert) {
        final val = _$_Paging(
          next: $checkedConvert('next', (v) => v as String?),
          previous: $checkedConvert('previous', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PagingToJson(_$_Paging instance) => <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
    };
