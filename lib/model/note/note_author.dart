import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_author.freezed.dart';

part 'note_author.g.dart';

@freezed
class NoteAuthor with _$NoteAuthor {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory NoteAuthor(
      {required int pk,
      @Default('') String first_name,
      @Default('') String last_name}) = _NoteAuthor;

  const NoteAuthor._();

  String get name => '$first_name $last_name';

  factory NoteAuthor.fromJson(Map<String, dynamic> json) =>
      _$NoteAuthorFromJson(json);
}
