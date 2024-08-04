// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_schedule.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeeklyScheduleAdapter extends TypeAdapter<WeeklySchedule> {
  @override
  final int typeId = 0;

  @override
  WeeklySchedule read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeeklySchedule(
      dailySchedules: (fields[0] as List?)?.cast<DailySchedule>(),
    );
  }

  @override
  void write(BinaryWriter writer, WeeklySchedule obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.dailySchedules);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeeklyScheduleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeeklySchedule _$WeeklyScheduleFromJson(Map<String, dynamic> json) =>
    WeeklySchedule(
      dailySchedules: (json['WeeklySchedule'] as List<dynamic>?)
          ?.map((e) => DailySchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeeklyScheduleToJson(WeeklySchedule instance) =>
    <String, dynamic>{
      'WeeklySchedule': instance.dailySchedules,
    };
