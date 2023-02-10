import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(checked: true)
  factory User({
    required int pk,
    required String email,
    @Default('') String first_name,
    @Default('') String last_name,
    @Default(false) bool is_verified,
  }) = _User;

  const User._();

  String get name =>
      [first_name, last_name].where((text) => text.isNotEmpty).join(' ');

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
