import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'class_duration.dart';

part 'class_subject.g.dart';

@HiveType(typeId: 3)
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
}

enum ClassStatus {
  nadomescanje,
  zaposlitev,
  odpadlaUra,
  vecSkupin,
  dogodek,
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
