import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/chat/conversation/conversation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ParticipantData extends DataSource<Participant> {
  ParticipantData(Ref ref, String id) : super(ref, 'participants_$id');

  @override
  Participant fromJson(Map<String, dynamic> json) => Participant.fromJson(json);

  @override
  Map<String, dynamic> parseJson(Participant value) => value.toJson();
}
