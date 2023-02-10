import 'package:dabi_chat/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_page_params.freezed.dart';
part 'chat_page_params.g.dart';

@Freezed(toJson: false)
class ChatPageParams with _$ChatPageParams {
  @JsonSerializable(checked: true)
  factory ChatPageParams({
    required String id,
    required String setting_id,
    required AcquisitionSource source,
  }) = _ChatPageParams;

  const ChatPageParams._();

  factory ChatPageParams.fromJson(Map<String, dynamic> json) =>
      _$ChatPageParamsFromJson(json);

  factory ChatPageParams.fromUrl(String url) {
    final uri = Uri.parse(url);
    final path = uri.pathSegments; // path/id/setting_id/source
    assert(path.length >= 4);
    return ChatPageParams.fromJson({
      'id': path[1],
      'setting_id': path[2],
      'source': path[3] == 'fb' ? 'FACEBOOK' : 'INSTAGRAM',
    });
  }
}
