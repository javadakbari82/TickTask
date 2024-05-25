// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_schema.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskSchemaCollection on Isar {
  IsarCollection<TaskSchema> get taskSchemas => this.collection();
}

const TaskSchemaSchema = CollectionSchema(
  name: r'TaskSchema',
  id: -8000441923276507697,
  properties: {
    r'checkList': PropertySchema(
      id: 0,
      name: r'checkList',
      type: IsarType.objectList,
      target: r'CheckListSchema',
    ),
    r'dateTime': PropertySchema(
      id: 1,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'describe': PropertySchema(
      id: 2,
      name: r'describe',
      type: IsarType.string,
    ),
    r'isCancel': PropertySchema(
      id: 3,
      name: r'isCancel',
      type: IsarType.bool,
    ),
    r'isDone': PropertySchema(
      id: 4,
      name: r'isDone',
      type: IsarType.bool,
    ),
    r'isNote': PropertySchema(
      id: 5,
      name: r'isNote',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'priority': PropertySchema(
      id: 7,
      name: r'priority',
      type: IsarType.bool,
    ),
    r'reminder': PropertySchema(
      id: 8,
      name: r'reminder',
      type: IsarType.bool,
    )
  },
  estimateSize: _taskSchemaEstimateSize,
  serialize: _taskSchemaSerialize,
  deserialize: _taskSchemaDeserialize,
  deserializeProp: _taskSchemaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'project': LinkSchema(
      id: -1057939471428362383,
      name: r'project',
      target: r'ProjectSchema',
      single: true,
    ),
    r'tags': LinkSchema(
      id: 6066023334998442393,
      name: r'tags',
      target: r'TagsSchema',
      single: false,
    )
  },
  embeddedSchemas: {r'CheckListSchema': CheckListSchemaSchema},
  getId: _taskSchemaGetId,
  getLinks: _taskSchemaGetLinks,
  attach: _taskSchemaAttach,
  version: '3.1.0+1',
);

int _taskSchemaEstimateSize(
  TaskSchema object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.checkList;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[CheckListSchema]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              CheckListSchemaSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.describe;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _taskSchemaSerialize(
  TaskSchema object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<CheckListSchema>(
    offsets[0],
    allOffsets,
    CheckListSchemaSchema.serialize,
    object.checkList,
  );
  writer.writeDateTime(offsets[1], object.dateTime);
  writer.writeString(offsets[2], object.describe);
  writer.writeBool(offsets[3], object.isCancel);
  writer.writeBool(offsets[4], object.isDone);
  writer.writeBool(offsets[5], object.isNote);
  writer.writeString(offsets[6], object.name);
  writer.writeBool(offsets[7], object.priority);
  writer.writeBool(offsets[8], object.reminder);
}

TaskSchema _taskSchemaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskSchema();
  object.checkList = reader.readObjectList<CheckListSchema>(
    offsets[0],
    CheckListSchemaSchema.deserialize,
    allOffsets,
    CheckListSchema(),
  );
  object.dateTime = reader.readDateTimeOrNull(offsets[1]);
  object.describe = reader.readStringOrNull(offsets[2]);
  object.id = id;
  object.isCancel = reader.readBoolOrNull(offsets[3]);
  object.isDone = reader.readBoolOrNull(offsets[4]);
  object.isNote = reader.readBoolOrNull(offsets[5]);
  object.name = reader.readStringOrNull(offsets[6]);
  object.priority = reader.readBoolOrNull(offsets[7]);
  object.reminder = reader.readBoolOrNull(offsets[8]);
  return object;
}

P _taskSchemaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<CheckListSchema>(
        offset,
        CheckListSchemaSchema.deserialize,
        allOffsets,
        CheckListSchema(),
      )) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _taskSchemaGetId(TaskSchema object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _taskSchemaGetLinks(TaskSchema object) {
  return [object.project, object.tags];
}

void _taskSchemaAttach(IsarCollection<dynamic> col, Id id, TaskSchema object) {
  object.id = id;
  object.project
      .attach(col, col.isar.collection<ProjectSchema>(), r'project', id);
  object.tags.attach(col, col.isar.collection<TagsSchema>(), r'tags', id);
}

extension TaskSchemaQueryWhereSort
    on QueryBuilder<TaskSchema, TaskSchema, QWhere> {
  QueryBuilder<TaskSchema, TaskSchema, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TaskSchemaQueryWhere
    on QueryBuilder<TaskSchema, TaskSchema, QWhereClause> {
  QueryBuilder<TaskSchema, TaskSchema, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TaskSchemaQueryFilter
    on QueryBuilder<TaskSchema, TaskSchema, QFilterCondition> {
  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      checkListIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checkList',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      checkListIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checkList',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      checkListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'checkList',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      checkListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'checkList',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      checkListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'checkList',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      checkListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'checkList',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      checkListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'checkList',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      checkListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'checkList',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> dateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      dateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> dateTimeEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      dateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> dateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> dateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> describeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'describe',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      describeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'describe',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> describeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'describe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      describeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'describe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> describeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'describe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> describeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'describe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      describeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'describe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> describeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'describe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> describeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'describe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> describeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'describe',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      describeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'describe',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      describeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'describe',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> isCancelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isCancel',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      isCancelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isCancel',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> isCancelEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCancel',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> isDoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDone',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      isDoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDone',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> isDoneEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDone',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> isNoteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isNote',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      isNoteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isNote',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> isNoteEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isNote',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> priorityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priority',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      priorityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priority',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> priorityEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priority',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> reminderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reminder',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      reminderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reminder',
      ));
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> reminderEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reminder',
        value: value,
      ));
    });
  }
}

extension TaskSchemaQueryObject
    on QueryBuilder<TaskSchema, TaskSchema, QFilterCondition> {
  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> checkListElement(
      FilterQuery<CheckListSchema> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'checkList');
    });
  }
}

extension TaskSchemaQueryLinks
    on QueryBuilder<TaskSchema, TaskSchema, QFilterCondition> {
  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> project(
      FilterQuery<ProjectSchema> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'project');
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> projectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'project', 0, true, 0, true);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> tags(
      FilterQuery<TagsSchema> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tags');
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> tagsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, true, length, true);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, 0, true);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, false, 999999, true);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, length, include);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, include, 999999, true);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterFilterCondition> tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'tags', lower, includeLower, upper, includeUpper);
    });
  }
}

extension TaskSchemaQuerySortBy
    on QueryBuilder<TaskSchema, TaskSchema, QSortBy> {
  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByDescribe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'describe', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByDescribeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'describe', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByIsCancel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCancel', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByIsCancelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCancel', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByIsDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByIsNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNote', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByIsNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNote', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByReminder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reminder', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> sortByReminderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reminder', Sort.desc);
    });
  }
}

extension TaskSchemaQuerySortThenBy
    on QueryBuilder<TaskSchema, TaskSchema, QSortThenBy> {
  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByDescribe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'describe', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByDescribeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'describe', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByIsCancel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCancel', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByIsCancelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCancel', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByIsDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByIsNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNote', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByIsNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNote', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByPriorityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priority', Sort.desc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByReminder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reminder', Sort.asc);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QAfterSortBy> thenByReminderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reminder', Sort.desc);
    });
  }
}

extension TaskSchemaQueryWhereDistinct
    on QueryBuilder<TaskSchema, TaskSchema, QDistinct> {
  QueryBuilder<TaskSchema, TaskSchema, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QDistinct> distinctByDescribe(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'describe', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QDistinct> distinctByIsCancel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCancel');
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QDistinct> distinctByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDone');
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QDistinct> distinctByIsNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isNote');
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QDistinct> distinctByPriority() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priority');
    });
  }

  QueryBuilder<TaskSchema, TaskSchema, QDistinct> distinctByReminder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reminder');
    });
  }
}

extension TaskSchemaQueryProperty
    on QueryBuilder<TaskSchema, TaskSchema, QQueryProperty> {
  QueryBuilder<TaskSchema, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TaskSchema, List<CheckListSchema>?, QQueryOperations>
      checkListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkList');
    });
  }

  QueryBuilder<TaskSchema, DateTime?, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<TaskSchema, String?, QQueryOperations> describeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'describe');
    });
  }

  QueryBuilder<TaskSchema, bool?, QQueryOperations> isCancelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCancel');
    });
  }

  QueryBuilder<TaskSchema, bool?, QQueryOperations> isDoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDone');
    });
  }

  QueryBuilder<TaskSchema, bool?, QQueryOperations> isNoteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isNote');
    });
  }

  QueryBuilder<TaskSchema, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<TaskSchema, bool?, QQueryOperations> priorityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priority');
    });
  }

  QueryBuilder<TaskSchema, bool?, QQueryOperations> reminderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reminder');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CheckListSchemaSchema = Schema(
  name: r'CheckListSchema',
  id: 1427773389612042390,
  properties: {
    r'isCancel': PropertySchema(
      id: 0,
      name: r'isCancel',
      type: IsarType.bool,
    ),
    r'isDone': PropertySchema(
      id: 1,
      name: r'isDone',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _checkListSchemaEstimateSize,
  serialize: _checkListSchemaSerialize,
  deserialize: _checkListSchemaDeserialize,
  deserializeProp: _checkListSchemaDeserializeProp,
);

int _checkListSchemaEstimateSize(
  CheckListSchema object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _checkListSchemaSerialize(
  CheckListSchema object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isCancel);
  writer.writeBool(offsets[1], object.isDone);
  writer.writeString(offsets[2], object.name);
}

CheckListSchema _checkListSchemaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CheckListSchema();
  object.isCancel = reader.readBoolOrNull(offsets[0]);
  object.isDone = reader.readBoolOrNull(offsets[1]);
  object.name = reader.readStringOrNull(offsets[2]);
  return object;
}

P _checkListSchemaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CheckListSchemaQueryFilter
    on QueryBuilder<CheckListSchema, CheckListSchema, QFilterCondition> {
  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      isCancelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isCancel',
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      isCancelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isCancel',
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      isCancelEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCancel',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      isDoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDone',
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      isDoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDone',
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      isDoneEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDone',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckListSchema, CheckListSchema, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension CheckListSchemaQueryObject
    on QueryBuilder<CheckListSchema, CheckListSchema, QFilterCondition> {}
