import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/model/auth/auth.dart';
import 'package:riverpod/riverpod.dart';

class UserData extends DataSource<User> {
  UserData(Ref ref) : super(ref, 'user_data');

  @override
  User fromJson(Map<String, dynamic> json) => User.fromJson(json);

  @override
  Map<String, dynamic> parseJson(value) => value.toJson();
}
