import 'package:isar/isar.dart';
import 'package:ticktask/feature/create_task_screen/data/local/database_service.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/project_schema.dart';

import '../../../home_screen/data/local/schema/task_schema.dart';

class CreateTaskDataBaseServiceIsar extends CreateTaskDatabaseService {
  final Isar _isar;

  CreateTaskDataBaseServiceIsar(this._isar);
  @override
  Future<void> insertTask(TaskSchema task) async {
    await _isar.writeTxn(() async {
      await _isar.taskSchemas.put(task);
    });
  }

  @override
  Future<int> createProject(ProjectSchema project) async {
    int idx;
    _isar.writeTxnSync(() {
      project.id = _isar.projectSchemas.putSync(project);
    });
    return project.id;
  }

  @override
  Future<List<ProjectSchema>> getAllProjects() async {
    List<ProjectSchema> allProjects =
        await _isar.projectSchemas.where().findAll();
    return allProjects;
  }

  @override
  Stream<void> projectListener() {
    return _isar.projectSchemas.watchLazy();
  }
}
