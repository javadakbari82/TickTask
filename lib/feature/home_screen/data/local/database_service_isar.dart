import 'package:isar/isar.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';

import 'database_service.dart';

class DataBaseServiceIsar extends DatabaseService {
  final Isar _isar;

  DataBaseServiceIsar(this._isar);

  @override
  void cancelTask(int id) async {
    // TODO: implement cancelTask
    await _isar.writeTxn(() async {
      TaskSchema canceledTask = (await _isar.taskSchemas.get(id))!;
      canceledTask.isCancel = true;
      return _isar.taskSchemas.put(canceledTask);
    });
  }

  @override
  void deleteTask(int id) async {
    // TODO: implement deleteTask
    await _isar.writeTxn(() {
      return _isar.taskSchemas.delete(id);
    });
  }

  @override
  void doneTask(int id) async {
    // TODO: implement doneTask
    await _isar.writeTxn(() async {
      TaskSchema doneTask = (await _isar.taskSchemas.get(id))!;
      doneTask.isNote = true;

      return _isar.taskSchemas.put(doneTask);
    });
  }

  @override
  void editTask(TaskSchema task) async {
    // TODO: implement editTask
    await _isar.writeTxn(() async {
      TaskSchema oldTask = (await _isar.taskSchemas.get(task.id))!;
      oldTask
        ..id = Isar.autoIncrement
        ..name = task.name
        ..describe = task.describe
        ..project.value = task.project.value
        ..priority = task.priority
        ..dateTime = task.dateTime
        ..reminder = task.reminder
        ..checkList = task.checkList
        ..tags.addAll(task.tags)
        ..isNote = task.isNote
        ..isDone = task.isDone
        ..isCancel = task.isCancel;
      return _isar.taskSchemas.put(oldTask);
    });
  }

  @override
  List<TaskSchema>? getTasks(DateTime dateTime) {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  void insertTask(TaskSchema task) {
    // TODO: implement insertTask
  }
}
