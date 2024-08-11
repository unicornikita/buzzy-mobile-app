import 'package:buzzy_mobile/core/models/class_duration.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'class_subject.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class ClassSubject {
  ClassSubject({
    required this.className,
    required this.classroom,
    required this.professor,
    required this.classDuration,
    this.classStatusInt,
    required this.classSubjects,
  });

  factory ClassSubject.fromJson(Map<String, dynamic> json) =>
      _$ClassSubjectFromJson(json);
  @HiveField(0)
  @JsonKey(name: 'ClassName')
  late String className;
  @HiveField(1)
  @JsonKey(name: 'Classroom')
  late String classroom;
  @HiveField(2)
  @JsonKey(name: 'Professor')
  late String professor;
  @HiveField(3)
  @JsonKey(name: 'ClassDuration')
  late ClassDuration classDuration;
  @HiveField(4)
  @JsonKey(name: 'ClassStatusInt')
  ClassStatus? classStatusInt;
  @HiveField(5)
  @JsonKey(name: 'SubClasses')
  List<ClassSubject>? classSubjects;

  ClassSubject copyWith(
      {required String className, String? professor, String? classroom}) {
    return ClassSubject(
      className: className,
      professor: professor ?? this.professor,
      classroom: classroom ?? this.classroom,
      classDuration: classDuration,
      classStatusInt: classStatusInt,
      classSubjects: classSubjects,
    );
  }
}

@HiveType(typeId: 5)
enum ClassStatus {
  @JsonValue(0)
  @HiveField(0)
  nadomescanje,
  @HiveField(1)
  @JsonValue(1)
  zaposlitev,
  @HiveField(2)
  @JsonValue(2)
  odpadlaUra,
  @HiveField(3)
  @JsonValue(3)
  vecSkupin,
  @HiveField(4)
  @JsonValue(4)
  dogodek,
  @HiveField(5)
  @JsonValue(5)
  pocitnice
}

extension ClassStatusExtension on ClassStatus {
  String get name {
    return switch (this) {
      ClassStatus.nadomescanje => 'Nadomeščanje',
      ClassStatus.zaposlitev => 'Zaposlitev',
      ClassStatus.odpadlaUra => 'Odpadla ura',
      ClassStatus.vecSkupin => 'Več skupin',
      ClassStatus.dogodek => 'Dogodek',
      ClassStatus.pocitnice => 'Šolski koledar'
    };
  }
}
