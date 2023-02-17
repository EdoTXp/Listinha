// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Task extends _Task with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Task(
    Uuid id,
    String description, {
    bool isCompleted = false,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Task>({
        'isCompleted': false,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'isCompleted', isCompleted);
  }

  Task._();

  @override
  Uuid get id => RealmObjectBase.get<Uuid>(this, 'id') as Uuid;
  @override
  set id(Uuid value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  bool get isCompleted =>
      RealmObjectBase.get<bool>(this, 'isCompleted') as bool;
  @override
  set isCompleted(bool value) =>
      RealmObjectBase.set(this, 'isCompleted', value);

  @override
  Stream<RealmObjectChanges<Task>> get changes =>
      RealmObjectBase.getChanges<Task>(this);

  @override
  Task freeze() => RealmObjectBase.freezeObject<Task>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Task._);
    return const SchemaObject(ObjectType.realmObject, Task, 'Task', [
      SchemaProperty('id', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('isCompleted', RealmPropertyType.bool),
    ]);
  }
}

class TaskBoard extends _TaskBoard
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  TaskBoard(
    Uuid id,
    String title, {
    bool isEnable = true,
    Iterable<Task> tasks = const [],
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<TaskBoard>({
        'isEnable': true,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'isEnable', isEnable);
    RealmObjectBase.set<RealmList<Task>>(this, 'tasks', RealmList<Task>(tasks));
  }

  TaskBoard._();

  @override
  Uuid get id => RealmObjectBase.get<Uuid>(this, 'id') as Uuid;
  @override
  set id(Uuid value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  RealmList<Task> get tasks =>
      RealmObjectBase.get<Task>(this, 'tasks') as RealmList<Task>;
  @override
  set tasks(covariant RealmList<Task> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool get isEnable => RealmObjectBase.get<bool>(this, 'isEnable') as bool;
  @override
  set isEnable(bool value) => RealmObjectBase.set(this, 'isEnable', value);

  @override
  Stream<RealmObjectChanges<TaskBoard>> get changes =>
      RealmObjectBase.getChanges<TaskBoard>(this);

  @override
  TaskBoard freeze() => RealmObjectBase.freezeObject<TaskBoard>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(TaskBoard._);
    return const SchemaObject(ObjectType.realmObject, TaskBoard, 'TaskBoard', [
      SchemaProperty('id', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('tasks', RealmPropertyType.object,
          linkTarget: 'Task', collectionType: RealmCollectionType.list),
      SchemaProperty('isEnable', RealmPropertyType.bool),
    ]);
  }
}
