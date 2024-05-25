import 'package:isar/isar.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/task_schema.dart';

part 'tags_schema.g.dart';

@collection
class TagsSchema {
  Id id = Isar.autoIncrement;
  String? name;
  @Backlink(to: 'tags')
  final tasks = IsarLinks<TaskSchema>();
}
