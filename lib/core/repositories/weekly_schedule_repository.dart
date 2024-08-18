import 'package:buzzy_mobile/core/models/weekly_schedule.dart';
import 'package:hive/hive.dart';

class WeeklyScheduleRepository {
  final Box<WeeklySchedule> weeklyScheduleBox =
      Hive.box<WeeklySchedule>('weeklyScheduleBox');

  Future<void> saveWeeklySchedule(
      WeeklySchedule weeklySchedule, String classID) async {
    await weeklyScheduleBox.put('weekly_schedule/$classID', weeklySchedule);
  }

  Future<WeeklySchedule?> getWeeklySchedule(String classID) async {
    return weeklyScheduleBox.get(
      'weekly_schedule/$classID',
    );
  }

  Future<void> deleteWeeklySchedule(String classID) async {
    await weeklyScheduleBox.delete('weekly_schedule/$classID');
  }
}
