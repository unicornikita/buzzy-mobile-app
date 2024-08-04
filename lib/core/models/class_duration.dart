import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'class_duration.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class ClassDuration {
  ClassDuration({
    required this.startTime,
    required this.endTime,
  });

  factory ClassDuration.fromJson(Map<String, dynamic> json) =>
      _$ClassDurationFromJson(json);
  @HiveField(0)
  @JsonKey(name: 'StartTime')
  late DateTime startTime;
  @HiveField(1)
  @JsonKey(name: 'EndTime')
  late DateTime endTime;
}
