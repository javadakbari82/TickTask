import '../../../home_screen/data/local/schema/task_schema.dart';

abstract class CreateTaskRepository {
  void insertTask(TaskSchema task);
}
