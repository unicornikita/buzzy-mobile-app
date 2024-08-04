import 'package:hive/hive.dart';

part 'user_events.g.dart';

@HiveType(typeId: 4)
class UserEvents {
  @HiveField(0)
  late String title;
  @HiveField(1)
  late String description;
  @HiveField(2)
  late DateTime date;
}
