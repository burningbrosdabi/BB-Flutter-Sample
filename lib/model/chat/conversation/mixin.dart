import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

mixin MessageParserMixin {
  types.Message toMessage({required String id, required types.User author});
}
