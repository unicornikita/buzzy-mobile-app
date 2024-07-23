import 'package:isar/isar.dart';

part 'user_events.g.dart';

@Collection()
class UserEvents {
  Id id = Isar.autoIncrement;

  late String title;
  late String description;
  late DateTime date;
}
