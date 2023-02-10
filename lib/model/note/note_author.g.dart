// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteAuthor _$$_NoteAuthorFromJson(Map<String, dynamic> json) =>
    _$_NoteAuthor(
      pk: json['pk'] as int,
      first_name: json['first_name'] as String? ?? '',
      last_name: json['last_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_NoteAuthorToJson(_$_NoteAuthor instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
    };
