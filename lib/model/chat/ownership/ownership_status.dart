import 'package:freezed_annotation/freezed_annotation.dart';

part 'ownership_status.freezed.dart';

@freezed
class OwnershipStatus with _$OwnershipStatus {
  factory OwnershipStatus.owned() = _OwnedStatus;
  factory OwnershipStatus.unowned() = _UnownedStatus;
  factory OwnershipStatus.unknown() = _UnknownStatus;
}
