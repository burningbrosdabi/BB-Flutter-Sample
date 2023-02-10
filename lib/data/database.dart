import 'package:dabi_chat/features/home/home.dart';
import 'package:sembast/sembast.dart' as sb;
import 'package:sembast/sembast_io.dart' as sb_io;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class Database extends StateNotifier<sb.Database?> {
  String dbPath = 'dabi.db';

  sb.DatabaseFactory dbFactory = sb_io.databaseFactoryIo;

  Database() : super(null);

  Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    final path = join(dir.path, dbPath);
    state = await dbFactory.openDatabase(path);
  }
}

final databaseProvider =
    StateNotifierProvider<Database, sb.Database?>((ref) => Database());
