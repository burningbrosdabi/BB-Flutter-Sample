import 'package:dabi_chat/model/chat/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
export 'delivered_response.dart';
part 'messenger.freezed.dart';
part 'messenger.g.dart';

@freezed
class Messenger with _$Messenger {
  @JsonSerializable(checked: true, explicitToJson: true)
  factory Messenger({
    required List<Conversation> data,
    Paging? paging,
  }) = _Messenger;

  const Messenger._();

  factory Messenger.fromJson(Map<String, dynamic> json) =>
      _$MessengerFromJson(json);
}

@freezed
class Paging with _$Paging {
  @JsonSerializable(checked: true)
  factory Paging({String? next, String? previous}) = _Paging;

  const Paging._();

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}
