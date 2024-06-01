import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';
import 'package:ticktask/feature/home_screen/data/repository/home_repository.dart';

import '../local/database_service.dart';

class HomeRepositoryLocal extends HomeRepository {
  final DatabaseService _databaseService;

  HomeRepositoryLocal(this._databaseService);
  @override
  void cancelTask(int id) {
    _databaseService.cancelTask(id);
  }

  @override
  void deleteTask(int id) {
    _databaseService.deleteTask(id);
  }

  @override
  void doneTask(int id) {
    _databaseService.doneTask(id);
  }

  @override
  void editTask(TaskSchema task) {
    _databaseService.editTask(task);
  }

  @override
  Future<List<TaskSchema>?> getTasks(DateTime dateTime) {
    Future<List<TaskSchema>?> tasks = _databaseService.getTasks(dateTime);
    return tasks;
  }

  @override
  void insertTask(TaskSchema task) {
    _databaseService.insertTask(task);
  }

  @override
  Stream<void> tasks() {
    return _databaseService.tasks();
  }
}
