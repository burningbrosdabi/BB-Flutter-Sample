import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivered_response.freezed.dart';
part 'delivered_response.g.dart';

@freezed
class DeliveredResponse with _$DeliveredResponse {
  factory DeliveredResponse({required String message_id}) = _DeliveredResponse;

  factory DeliveredResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveredResponseFromJson(json);
}
