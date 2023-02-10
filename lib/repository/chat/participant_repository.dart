import 'dart:convert';

import 'package:dabi_chat/data/chat/participant_data.dart';
import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/model.dart' hide User;
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:flutter/foundation.dart';
import 'package:tuple/tuple.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' show User;

class ParticipantRepository extends IRepository
    with
        DataSourceMixin<Map<String, dynamic>, Participant>,
        CachingStrategies<Participant> {
  ParticipantRepository({
    required this.id,
    required super.http,
    required super.ref,
    @visibleForTesting ParticipantData? data_source,
  })  : data_source = data_source ?? ParticipantData(ref, id),
        super(
          log: Logging('ParticipantRepository'),
        );

  final String id;

  @override
  DataSource<Participant> data_source;

  Future<Participant> _getFromMessenger(String receiver_id) async {
    try {
      log.info(subTag: '_getFromMessenger');
      final response =
          await http.get(id, queryParameters: {'fields': 'participants'});
      late final List<MapEntry<String, String>> entries;
      try {
        entries =
            pick(response, 'participants', 'data').asListOrThrow((Pick pick) {
          return MapEntry(
            pick('id').asStringOrThrow(),
            pick('name').asStringOrNull() ??
                pick('username').asStringOrNull() ??
                '',
          );
        });
      } catch (e) {
        log.error(
            subTag: '_getFromMessenger',
            message:
                ['failed to parse response', json.encode(response)].join('\n'));
        rethrow;
      }

      assert(entries.length >= 2, "participants should have more than 1");

      MapEntry<String, String>? receiver;
      MapEntry<String, String>? sender;

      for (final entry in entries) {
        final id = entry.key;
        if (id == receiver_id) {
          receiver = entry;
        } else {
          sender = entry;
        }
      }

      assert(receiver != null);
      assert(sender != null);

      log.info(subTag: '_getFromMessenger success');
      return Participant(
        sender_id: sender!.key,
        sender_name: sender.value,
        receiver_id: receiver!.key,
        receiver_name: receiver.value,
      );
    } catch (e) {
      log.error(subTag: '_getFromMessenger failed', message: e.toString());
      rethrow;
    }
  }

  Future<Tuple2<User, User>> getParticipant(String receiver_id) async {
    try {
      log.error(subTag: 'getParticipant');
      final participant =
          await cacheFirst(() => _getFromMessenger(receiver_id));

      log.error(subTag: 'getParticipant success');
      return Tuple2(
        User(id: participant.receiver_id, firstName: participant.receiver_name),
        User(id: participant.sender_id, firstName: participant.sender_name),
      );
    } catch (e) {
      log.error(subTag: 'getParticipant failed', message: e.toString());
      rethrow;
    }
  }
}
