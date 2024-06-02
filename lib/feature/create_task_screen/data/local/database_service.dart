import '../../../home_screen/data/local/schema/task_schema.dart';

abstract class DatabaseService {
  void insertTask(TaskSchema task);
}
