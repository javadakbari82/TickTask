import 'package:isar/isar.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/project_schema.dart';
import 'package:ticktask/feature/home_screen/data/local/schema/tags_schema.dart';

part 'task_schema.g.dart';

@collection
class TaskSchema {
  Id id = Isar.autoIncrement;
  String? name;
  String? describe;
  final project = IsarLink<ProjectSchema>();
  DateTime? dateTime;
  bool? reminder;
  bool? priority;
  List<CheckListSchema>? checkList;
  bool? isDone;
  bool? isCancel;
  bool? isNote;
  final tags = IsarLinks<TagsSchema>();
}

@embedded
class CheckListSchema {
  String? name;
  bool? isDone;
  bool? isCancel;
}
