// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messenger_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessengerNote _$$_MessengerNoteFromJson(Map<String, dynamic> json) =>
    _$_MessengerNote(
      pk: json['pk'] as int,
      staff: NoteAuthor.fromJson(json['staff'] as Map<String, dynamic>),
      text: json['text'] as String,
      created: parseDate(json['created']),
    );

Map<String, dynamic> _$$_MessengerNoteToJson(_$_MessengerNote instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'staff': instance.staff.toJson(),
      'text': instance.text,
      'created': instance.created.toIso8601String(),
    };
