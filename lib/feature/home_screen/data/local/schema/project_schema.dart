import 'package:isar/isar.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';

part 'project_schema.g.dart';

@collection
class ProjectSchema {
  Id id = Isar.autoIncrement;
  String? name;
  @Backlink(to: 'project')
  final tasks = IsarLinks<TaskSchema>();
}
