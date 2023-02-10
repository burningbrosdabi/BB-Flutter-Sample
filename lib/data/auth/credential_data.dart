import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/auth/auth.dart';
import 'package:riverpod/riverpod.dart';

class CredentialData extends DataSource<Credential> {
  CredentialData(Ref ref) : super(ref, 'credential_data');

  @override
  Credential fromJson(Map<String, dynamic> json) {
    return Credential.fromJson(json);
  }

  @override
  Map<String, dynamic> parseJson(value) {
    return value.toJson();
  }
}
