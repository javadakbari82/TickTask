import 'package:isar/isar.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';

import 'database_service.dart';

class HomePageDataBaseServiceIsar extends HomePageDatabaseService {
  final Isar _isar;

  HomePageDataBaseServiceIsar(this._isar);

  @override
  void cancelTask(int id) async {
    await _isar.writeTxn(() async {
      TaskSchema? canceledTask = await _isar.taskSchemas.get(id);
      canceledTask?.isCancel = true;
      await _isar.taskSchemas.put(canceledTask!);
    });
  }

  @override
  void deleteTask(int id) async {
    await _isar.writeTxn(() async {
      await _isar.taskSchemas.delete(id);
    });
  }

  @override
  void doneTask(int id) async {
    await _isar.writeTxn(() async {
      TaskSchema? doneTask = await _isar.taskSchemas.get(id);
      doneTask?.isDone = true;
      await _isar.taskSchemas.put(doneTask!);
    });
  }

  @override
  void editTask(TaskSchema task) async {
    await _isar.writeTxn(() async {
      await _isar.taskSchemas.put(task);
    });
  }

  @override
  Future<List<TaskSchema>?> getTasks(DateTime dateTime) async {
    List<TaskSchema> todayTasks =
        await _isar.taskSchemas.filter().dateTimeEqualTo(dateTime).findAll();
    return todayTasks;
  }

  @override
  Stream<void> tasks() {
    return _isar.taskSchemas.watchLazy();
  }
}
