import 'package:hive/hive.dart';

part 'user_event.g.dart';

@HiveType(typeId: 4)
class UserEvent {
  @HiveField(0)
  late String title;
  @HiveField(1)
  late String description;
  @HiveField(2)
  late DateTime date;
}
