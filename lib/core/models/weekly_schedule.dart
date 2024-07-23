import 'package:isar/isar.dart';

import 'daily_schedule.dart';

part 'weekly_schedule.g.dart';

@Collection()
class WeeklySchedule {
  Id id = Isar.autoIncrement;

  final IsarLinks<DailySchedule> dailySchedules = IsarLinks<DailySchedule>();

  String error() {
    return 'unable to get the schedule';
  }
}
