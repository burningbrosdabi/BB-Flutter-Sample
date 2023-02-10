part of 'messenger_repository.dart';

class IGMessengerRepository extends MessengerRepository {
  IGMessengerRepository({
    required super.ref,
    required super.http,
    required super.conversation_id,
    @visibleForTesting Logging? log,
    //  @visibleForTesting MessengerDataSource? data_source,
  })  : _pris_mess_repo = IGPristineMessengerRepository(
          conversation_id: conversation_id,
          http: http,
          ref: ref,
        ),
        super(
          log: log ?? Logging('IGMessengerRepository'),
          // data_source:
          //     data_source ?? MessengerDataSource(read, conversation_id),
        );

  @override
  String get outside_window_tag => 'HUMAN_AGENT';

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
  Future<void> updateSenderAction(
      {required String recipient,
      required String page_id,
      required SenderAction action}) async {
    return Future.value();
  }

  Future<String> _uploadS3({required AssetEntity asset}) async {
    final file = await asset.file;
    final url = await upload(file!, 'EYEI');
    return url;
  }

  @override
  Future<DeliveredResponse> uploadAttachment({
    required AssetEntity asset,
  }) async {
    final url = await _uploadS3(asset: asset);
    return await sendAttachmentMessage(
      recipient_id: ref.read(chatProvider(conversation_id)).sender.id,
      url: url,
      type: asset.type,
    );
  }

  @override
  Future<OwnershipStatus> takeOwnership() async {
    log.info(subTag: 'takeOwnership');
    try {
      await http.post('me/take_thread_control', data: {
        "recipient": {"id": ref.read(chatProvider(conversation_id)).sender.id}
      });
      log.info(subTag: 'takeOwnership success');
      return OwnershipStatus.owned();
    } catch (e, trace) {
      log.error(
        subTag: 'takeOwnership failed',
        message: 'return unknown ownership',
        error: e,
        trace: trace,
      );
      return OwnershipStatus.unknown();
    }
  }

  @override
  Future<void> checkOwnership() async {
    log.info(subTag: 'checkOwnership');
    try {
      final ownership = await _checkOwnership();
      log.info(
          subTag: 'checkOwnership',
          message: 'ownership: ${ownership.toString()}');

      await ownership.maybeWhen<Future<OwnershipStatus>>(
        owned: () => Future.value(OwnershipStatus.owned()),
        orElse: () => takeOwnership(),
      );
    } finally {
      log.info(subTag: 'checkOwnership done');
    }
  }

  Future<OwnershipStatus> _checkOwnership() async {
    try {
      final recipient_id = ref.read(chatProvider(conversation_id)).sender.id;
      final response = await http.get('me/thread_owner', queryParameters: {
        'recipient': recipient_id,
      });
      final data = pick(response, 'data').asListOrThrow(
          (pick) => pick('thread_owner', 'app_id').asStringOrThrow());
      if (data.isEmpty) throw 'empty ownership';

      return data.first == MessengerRepository.app_id
          ? OwnershipStatus.owned()
          : OwnershipStatus.unowned();
    } catch (e, trace) {
      log.error(
        subTag: '_checkOwnership failed',
        message: 'return unknown ownership',
        error: e,
        trace: trace,
      );
      return OwnershipStatus.unknown();
    }
  }
}
