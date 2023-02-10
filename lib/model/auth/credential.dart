import 'package:freezed_annotation/freezed_annotation.dart';

part 'credential.freezed.dart';
part 'credential.g.dart';

@freezed
class Credential with _$Credential {
  @JsonSerializable(checked: true)
  factory Credential({
    required String access_token,
    required String refresh_token,
  }) = _Credential;

  const Credential._();

  factory Credential.fromJson(Map<String, dynamic> json) =>
      _$CredentialFromJson(json);
}
