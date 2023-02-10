part of 'postman_provider.dart';

class DeliveryOperation with PostmanException, PostmanUtils {
  @override
  final Ref ref;
  final String conversation_id;
  final Logging log = Logging('PostmanStream');

  // final Function(Message message, $Exception? exception) retry;

  DeliveryOperation({
    required this.ref,
    // required this.retry,
    required this.conversation_id,
  });

  void sending(SendingInstance event) {}

  void delivered(Tuple3<String, Message, DeliveredResponse> event) {}

  void suspended(SuspendInstance event) {}
}

class SuspendInstance {
  final Message message;
  final Object? error;
  final StackTrace? trace;

  SuspendInstance({
    required this.message,
    this.error,
    this.trace,
  });
}

class SendingInstance {
  final String conversation_id;
  final List<Message> messages;
  Function(List<Message> messages)? post_sending_callback;

  SendingInstance({
    required this.conversation_id,
    required this.messages,
  });
}
