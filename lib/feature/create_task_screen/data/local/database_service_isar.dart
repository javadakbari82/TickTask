import 'package:isar/isar.dart';
import 'package:ticktask/feature/create_task_screen/data/local/database_service.dart';

import '../../../home_screen/data/local/schema/task_schema.dart';

class DataBaseServiceIsar extends DatabaseService {
  final Isar _isar;

  DataBaseServiceIsar(this._isar);
  @override
  Future<void> insertTask(TaskSchema task) async {
    await _isar.writeTxn(() async {
      await _isar.taskSchemas.put(task);
    });
  }
}
