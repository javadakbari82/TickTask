import 'package:ticktask/feature/create_task_screen/data/repository/create_task_repository.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/project_schema.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';

import '../local/database_service.dart';

class CreateTaskRepositoryLocal extends CreateTaskRepository {
  final CreateTaskDatabaseService _databaseService;

  CreateTaskRepositoryLocal(this._databaseService);

  @override
  void insertTask(TaskSchema task) {
    _databaseService.insertTask(task);
  }

  @override
  Future<int> createProject(ProjectSchema project) {
    return _databaseService.createProject(project);
  }

  @override
  Future<List<ProjectSchema>> getAllProjects() {
    return _databaseService.getAllProjects();
  }

  @override
  Stream<void> projectListener() {
    return _databaseService.projectListener();
  }
}
