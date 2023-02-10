// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReplyDto _$$_ReplyDtoFromJson(Map<String, dynamic> json) => _$_ReplyDto(
      mid: json['mid'] as String,
      reply_to: getReplyMid(json, 'reply_to') as String,
    );

Map<String, dynamic> _$$_ReplyDtoToJson(_$_ReplyDto instance) =>
    <String, dynamic>{
      'mid': instance.mid,
      'reply_to': instance.reply_to,
    };
