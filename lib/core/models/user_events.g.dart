// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_events.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserEventsAdapter extends TypeAdapter<UserEvents> {
  @override
  final int typeId = 5;

  @override
  UserEvents read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserEvents()
      ..title = fields[0] as String
      ..description = fields[1] as String
      ..date = fields[2] as DateTime;
  }

  @override
  void write(BinaryWriter writer, UserEvents obj) {
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
      other is UserEventsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
