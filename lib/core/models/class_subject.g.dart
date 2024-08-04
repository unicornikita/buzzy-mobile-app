// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_subject.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClassSubjectAdapter extends TypeAdapter<ClassSubject> {
  @override
  final int typeId = 2;

  @override
  ClassSubject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClassSubject(
      className: fields[0] as String,
      classroom: fields[1] as String,
      professor: fields[2] as String,
      classDuration: fields[3] as ClassDuration,
      classStatusInt: fields[4] as ClassStatus?,
      classSubjects: (fields[5] as List?)?.cast<ClassSubject>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClassSubject obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.className)
      ..writeByte(1)
      ..write(obj.classroom)
      ..writeByte(2)
      ..write(obj.professor)
      ..writeByte(3)
      ..write(obj.classDuration)
      ..writeByte(4)
      ..write(obj.classStatusInt)
      ..writeByte(5)
      ..write(obj.classSubjects);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassSubjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ClassStatusAdapter extends TypeAdapter<ClassStatus> {
  @override
  final int typeId = 5;

  @override
  ClassStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ClassStatus.nadomescanje;
      case 1:
        return ClassStatus.zaposlitev;
      case 2:
        return ClassStatus.odpadlaUra;
      case 3:
        return ClassStatus.vecSkupin;
      case 4:
        return ClassStatus.dogodek;
      case 5:
        return ClassStatus.pocitnice;
      default:
        return ClassStatus.nadomescanje;
    }
  }

  @override
  void write(BinaryWriter writer, ClassStatus obj) {
    switch (obj) {
      case ClassStatus.nadomescanje:
        writer.writeByte(0);
        break;
      case ClassStatus.zaposlitev:
        writer.writeByte(1);
        break;
      case ClassStatus.odpadlaUra:
        writer.writeByte(2);
        break;
      case ClassStatus.vecSkupin:
        writer.writeByte(3);
        break;
      case ClassStatus.dogodek:
        writer.writeByte(4);
        break;
      case ClassStatus.pocitnice:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassSubject _$ClassSubjectFromJson(Map<String, dynamic> json) => ClassSubject(
      className: json['ClassName'] as String,
      classroom: json['Classroom'] as String,
      professor: json['Professor'] as String,
      classDuration:
          ClassDuration.fromJson(json['ClassDuration'] as Map<String, dynamic>),
      classStatusInt:
          $enumDecodeNullable(_$ClassStatusEnumMap, json['ClassStatusInt']),
      classSubjects: (json['SubClasses'] as List<dynamic>?)
          ?.map((e) => ClassSubject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassSubjectToJson(ClassSubject instance) =>
    <String, dynamic>{
      'ClassName': instance.className,
      'Classroom': instance.classroom,
      'Professor': instance.professor,
      'ClassDuration': instance.classDuration,
      'ClassStatusInt': _$ClassStatusEnumMap[instance.classStatusInt],
      'SubClasses': instance.classSubjects,
    };

const _$ClassStatusEnumMap = {
  ClassStatus.nadomescanje: 0,
  ClassStatus.zaposlitev: 1,
  ClassStatus.odpadlaUra: 2,
  ClassStatus.vecSkupin: 3,
  ClassStatus.dogodek: 4,
  ClassStatus.pocitnice: 5,
};
