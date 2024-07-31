// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_duration.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClassDurationAdapter extends TypeAdapter<ClassDuration> {
  @override
  final int typeId = 4;

  @override
  ClassDuration read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClassDuration(
      startTime: fields[0] as DateTime,
      endTime: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, ClassDuration obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.startTime)
      ..writeByte(1)
      ..write(obj.endTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassDurationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassDuration _$ClassDurationFromJson(Map<String, dynamic> json) =>
    ClassDuration(
      startTime: DateTime.parse(json['StartTime'] as String),
      endTime: DateTime.parse(json['EndTime'] as String),
    );

Map<String, dynamic> _$ClassDurationToJson(ClassDuration instance) =>
    <String, dynamic>{
      'StartTime': instance.startTime.toIso8601String(),
      'EndTime': instance.endTime.toIso8601String(),
    };
