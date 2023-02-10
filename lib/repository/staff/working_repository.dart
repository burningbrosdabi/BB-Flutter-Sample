import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:deep_pick/deep_pick.dart';

class WorkingRepository extends IRepository {
  WorkingRepository({required super.ref})
      : super(log: Logging('WorkingRepository'));

  Future<WorkingStatus> getStatus() async {
    final response = await http.get('user-status/');
    final is_away = pick(response, 'is_away').asBoolOrThrow();
    if (is_away) return const WorkingStatus.away();
    return const WorkingStatus.active();
  }

  Future<void> updateStatus(WorkingStatus status) async {
    await http.post('user-status/', data: {
      'is_away': status.when(
        active: () => false,
        away: () => true,
      ),
    });
  }
}
