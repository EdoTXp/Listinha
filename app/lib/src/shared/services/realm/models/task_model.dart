import 'package:realm/realm.dart';

part 'task_model.g.dart';

@RealmModel()
class _Task {
  @PrimaryKey()
  late Uuid id;
  late String description;
  bool isCompleted = false;
}

@RealmModel()
class _TaskBoard {
  @PrimaryKey()
  late Uuid id;
  late String title;
  late List<_Task> tasks;
  bool isEnable = true;
}
