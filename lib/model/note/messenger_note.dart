import 'package:dabi_chat/model/mixin.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'note_author.dart';

part 'messenger_note.freezed.dart';

part 'messenger_note.g.dart';

@freezed
class MessengerNote with _$MessengerNote, FromListJson<MessengerNote> {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MessengerNote({
    required int pk,
    required NoteAuthor staff,
    required String text,
    @JsonKey(fromJson: parseDate) required DateTime created,
  }) = _MessengerNote;

  const MessengerNote._();

  factory MessengerNote.dummy() {
    return const MessengerNote._();
  }

  factory MessengerNote.fromJson(Map<String, dynamic> json) =>
      _$MessengerNoteFromJson(json);

  @override
  MessengerNote parseItem(Map<String, dynamic> json) =>
      MessengerNote.fromJson(json);
}
