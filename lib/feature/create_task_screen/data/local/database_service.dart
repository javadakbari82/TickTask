import '../../../home_screen/data/local/schema/task_schema.dart';

abstract class CreateTaskDatabaseService {
  void insertTask(TaskSchema task);
}
