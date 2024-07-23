import 'package:isar/isar.dart';

import 'class_duration.dart';

part 'class_subject.g.dart';

@Collection()
class ClassSubject {
  Id id = Isar.autoIncrement;

  late String className;
  late String classroom;
  late String professor;
  late ClassDuration classDuration;
  @Enumerated(EnumType.ordinal32)
  ClassStatus? classStatusInt;

  final IsarLinks<ClassSubject> subClasses = IsarLinks<ClassSubject>();
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
