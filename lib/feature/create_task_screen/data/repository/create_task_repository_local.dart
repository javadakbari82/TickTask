import 'package:ticktask/feature/create_task_screen/data/repository/create_task_repository.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';

import '../local/database_service.dart';

class CreateTaskRepositoryLocal extends CreateTaskRepository {
  final CreateTaskDatabaseService _databaseService;

  CreateTaskRepositoryLocal(this._databaseService);

  @override
  void insertTask(TaskSchema task) {
    _databaseService.insertTask(task);
  }
}
