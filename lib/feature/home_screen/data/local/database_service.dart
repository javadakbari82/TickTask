import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';

abstract class HomePageDatabaseService {
  Future<List<TaskSchema>?> getTasks(DateTime dateTime);

  void editTask(TaskSchema task);

  void deleteTask(int id);

  void cancelTask(int id);

  void doneTask(int id);

  Stream<void> tasks();
}
