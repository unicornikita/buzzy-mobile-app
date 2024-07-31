import 'package:buzzy_mobile/core/models/weekly_schedule.dart';
import 'package:hive/hive.dart';

class WeeklyScheduleRepository {
  final weeklyScheduleBox = Hive.box<WeeklySchedule>('weeklyScheduleBox');

  Future<void> saveWeeklySchedule(WeeklySchedule weeklySchedule) async {
    await weeklyScheduleBox.put('weekly_schedule', weeklySchedule);
  }

  Future<WeeklySchedule?> getWeeklySchedule() async {
    return weeklyScheduleBox.get('weekly_schedule');
  }

  Future<void> deleteWeeklySchedule() async {
    await weeklyScheduleBox.delete('weekly_schedule');
  }
}
