// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_event.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserEventAdapter extends TypeAdapter<UserEvent> {
  @override
  final int typeId = 4;

  @override
  UserEvent read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserEvent()
      ..title = fields[0] as String
      ..description = fields[1] as String
      ..date = fields[2] as DateTime;
  }

  @override
  void write(BinaryWriter writer, UserEvent obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserEventAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
