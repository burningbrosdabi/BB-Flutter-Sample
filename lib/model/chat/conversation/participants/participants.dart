import 'package:freezed_annotation/freezed_annotation.dart';

part 'participants.freezed.dart';
part 'participants.g.dart';

@freezed
class Participant with _$Participant {
  @JsonSerializable(checked: true)
  const factory Participant({
    required String sender_id,
    @Default('') String sender_name,
    required String receiver_id,
    @Default('') String receiver_name,
  }) = _Participant;

  const Participant._();

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);
}
