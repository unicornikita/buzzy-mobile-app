// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_subject.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClassSubjectAdapter extends TypeAdapter<ClassSubject> {
  @override
  final int typeId = 3;

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
  ClassStatus.nadomescanje: 'nadomescanje',
  ClassStatus.zaposlitev: 'zaposlitev',
  ClassStatus.odpadlaUra: 'odpadlaUra',
  ClassStatus.vecSkupin: 'vecSkupin',
  ClassStatus.dogodek: 'dogodek',
  ClassStatus.pocitnice: 'pocitnice',
};
