import '../local/schema/task_schema.dart';

abstract class HomeRepository {
  Future<List<TaskSchema>?> getTasks(DateTime dateTime);

  void editTask(TaskSchema task);

  void deleteTask(int id);

  void cancelTask(int id);

  void doneTask(int id);

  Stream<void> tasks();
}
