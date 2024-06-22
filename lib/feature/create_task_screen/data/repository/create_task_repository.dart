import '../../../home_screen/data/local/schema/project_schema.dart';
import '../../../home_screen/data/local/schema/task_schema.dart';

abstract class CreateTaskRepository {
  void insertTask(TaskSchema task);
  Future<int> createProject(ProjectSchema project);
  Future<List<ProjectSchema>> getAllProjects();
  Stream<void> projectListener();
}
