import 'package:dabi_chat/model/chat/conversation/message_metadata/custom_message_metadata.dart';
import 'package:dabi_chat/model/chat/conversation/mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
part 'share.freezed.dart';
part 'share.g.dart';

const like_sticker_id = '369239263222822';

@freezed
class Share with _$Share, MessageParserMixin {
  @JsonSerializable(checked: true, explicitToJson: true)
  factory Share({
    required String url,
    @Default(false) bool is_like_sticker,
  }) = _Share;

  factory Share.fromJson(Map<String, dynamic> json) => _$ShareFromJson(json);

  const Share._();

  @override
  types.Message toMessage({required String id, required types.User author}) {
    final metadata = MessageMetadata.share(
      url: url,
      is_like_sticker: is_like_sticker,
    ).toJson();
    return types.CustomMessage(
      author: author,
      id: id,
      metadata: metadata,
    );
  }
}
