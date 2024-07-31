import 'package:buzzy_mobile/core/models/class_subject.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'daily_schedule.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class DailySchedule {
  DailySchedule({
    required this.dayOfTheWeek,
    required this.classSubjects,
  });
  factory DailySchedule.fromJson(Map<String, dynamic> json) =>
      _$DailyScheduleFromJson(json);
  @HiveField(0)
  @JsonKey(name: 'DayOfTheWeek')
  late String dayOfTheWeek;
  @HiveField(1)
  @JsonKey(name: 'DailySchedule')
  final List<ClassSubject> classSubjects;
}
