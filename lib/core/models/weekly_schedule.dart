import 'package:buzzy_mobile/core/models/daily_schedule.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weekly_schedule.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class WeeklySchedule {
  WeeklySchedule({
    required this.dailySchedules,
  });

  factory WeeklySchedule.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleFromJson(json);

  @HiveField(0)
  @JsonKey(name: 'WeeklySchedule')
  List<DailySchedule>? dailySchedules;

  String error() {
    return 'unable to get the schedule';
  }

  WeeklySchedule copyWith({List<DailySchedule>? dailySchedules}) {
    return WeeklySchedule(
      dailySchedules: dailySchedules ?? this.dailySchedules,
    );
  }
}
