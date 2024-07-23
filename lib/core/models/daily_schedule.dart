import 'package:isar/isar.dart';

import 'class_subject.dart';

part 'daily_schedule.g.dart';

@Collection()
class DailySchedule {
  Id id = Isar.autoIncrement;

  late String dayOfTheWeek;
  final IsarLinks<ClassSubject> classSubjects = IsarLinks<ClassSubject>();
}
