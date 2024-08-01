import 'package:buzzy_mobile/core/models/class_subject.dart';
import 'package:flutter/material.dart';

class ClassTile extends StatelessWidget {
  const ClassTile({super.key, required this.classSubject});

  final ClassSubject classSubject;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${classSubject.className} class name',
          style: const TextStyle(color: Colors.black),
        ),
        Text(
          '${classSubject.classroom} class room',
          style: const TextStyle(color: Colors.black),
        ),
        Text(
          '${classSubject.classDuration.startTime} - ${classSubject.classDuration.endTime}',
          style: const TextStyle(color: Colors.black),
        ),
        Text(
          '${classSubject.classStatusInt} status',
          style: const TextStyle(color: Colors.black),
        ),
        Text(
          '${classSubject.classSubjects?[0].className} subclasses',
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
