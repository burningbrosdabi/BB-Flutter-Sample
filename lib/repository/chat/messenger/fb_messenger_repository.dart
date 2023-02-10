part of 'messenger_repository.dart';

class FBMessengerRepository extends MessengerRepository {
  FBMessengerRepository(
      {required super.ref, required super.conversation_id, required super.http})
      : _pris_mess_repo = FBPristineMessengerRepository(
          ref: ref,
          conversation_id: conversation_id,
          http: http,
        ),
        super(
          log: Logging('FBMessengerRepository'),
        );

  @override
  String get outside_window_tag => 'POST_PURCHASE_UPDATE';

  @override
  final PristineMessengerRepository _pris_mess_repo;

  @override
  Stream<Messenger> streaming() {
    try {
      log.info(subTag: 'streaming');
      final stream = _pris_mess_repo.streaming();
      log.info(subTag: 'streaming', message: 'get stream done');
      return stream.map((value) {
        log.info(subTag: 'streaming', message: 'received message from stream');
        return Messenger.fromJson(value);
      });
    } catch (e) {
      log.error(subTag: 'streaming failed', message: e.toString());
      rethrow;
    }
  }

  @override
  Future<void> updateSenderAction({
    required String recipient,
    required String page_id,
    required SenderAction action,
  }) async {
    try {
      await http.post('$page_id/messages', data: {
        "recipient": {"id": recipient},
        "sender_action": action.toString()
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DeliveredResponse> uploadAttachment({
    required AssetEntity asset,
  }) async {
    final file = await asset.originFile;
    assert(file != null);
    final bytes = await file!.readAsBytes();

    var contentType = file.path.split(".").last;
    if (contentType == 'jpg') contentType = 'jpeg';
    const mediaType = 'image';

    final filedata = MultipartFile.fromBytes(
      bytes,
      filename: basename(file.path),
      contentType: MediaType(mediaType, contentType),
    );
    final recipient_id = ref.read(chatProvider(conversation_id)).sender.id;

    final formData = FormData.fromMap({
      'message': json.encode({
        "attachment": {
          "type": mediaType,
          "payload": {"is_reusable": false}
        }
      }),
      'recipient': json.encode({'id': recipient_id}),
      'filedata': filedata
    });

    final response = await http.post('me/messages', data: formData);
    return DeliveredResponse.fromJson(response);
  }

  @override
  Future<OwnershipStatus> takeOwnership() {
    return Future.value(OwnershipStatus.unknown());
  }
}
