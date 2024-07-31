// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DailyScheduleAdapter extends TypeAdapter<DailySchedule> {
  @override
  final int typeId = 2;

  @override
  DailySchedule read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DailySchedule(
      dayOfTheWeek: fields[0] as String,
      classSubjects: (fields[1] as List).cast<ClassSubject>(),
    );
  }

  @override
  void write(BinaryWriter writer, DailySchedule obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.dayOfTheWeek)
      ..writeByte(1)
      ..write(obj.classSubjects);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyScheduleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailySchedule _$DailyScheduleFromJson(Map<String, dynamic> json) =>
    DailySchedule(
      dayOfTheWeek: json['DayOfTheWeek'] as String,
      classSubjects: (json['DailySchedule'] as List<dynamic>)
          .map((e) => ClassSubject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DailyScheduleToJson(DailySchedule instance) =>
    <String, dynamic>{
      'DayOfTheWeek': instance.dayOfTheWeek,
      'DailySchedule': instance.classSubjects,
    };
