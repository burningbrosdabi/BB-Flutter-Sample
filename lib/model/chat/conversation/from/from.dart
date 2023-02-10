import 'package:freezed_annotation/freezed_annotation.dart';

part 'from.freezed.dart';
part 'from.g.dart';

@Freezed()
class From with _$From {
  @JsonSerializable(checked: true)
  const factory From({required String id, String? profile_pic}) = _From;

  const From._();

  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);
}
