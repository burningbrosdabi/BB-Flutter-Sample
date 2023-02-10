import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_status.freezed.dart';
part 'working_status.g.dart';

@freezed
class WorkingStatus with _$WorkingStatus {
  const factory WorkingStatus.active() = ActiveStatus;
  const factory WorkingStatus.away() = AwayStatus;

  factory WorkingStatus.fromJson(Map<String, dynamic> json) =>
      _$WorkingStatusFromJson(json);
}
