import '../local/schema/task_schema.dart';

abstract class HomeRepository {
  Future<List<TaskSchema>?> getTasks(DateTime dateTime);

  void insertTask(TaskSchema task);

  void editTask(TaskSchema task);

  void deleteTask(int id);

  void cancelTask(int id);

  void doneTask(int id);

// Stream<List<Task>> tasks();
}
