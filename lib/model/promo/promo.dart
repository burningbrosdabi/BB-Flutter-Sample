import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo.freezed.dart';
part 'promo.g.dart';

@freezed
class Promo with _$Promo {
  @JsonSerializable(checked: true, explicitToJson: true)
  factory Promo({
    required int id,
    required String title,
    required String note,
    @Default(1) double discount_rate,
  }) = _Promo;

  factory Promo.fromJson(Map<String, dynamic> json) => _$PromoFromJson(json);
}
