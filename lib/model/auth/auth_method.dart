import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_method.freezed.dart';

@freezed
class AuthMethod with _$AuthMethod {
  const factory AuthMethod.facebook() = _AuthMethodFacebook;
  const factory AuthMethod.apple() = _AuthMethodApple;
}
