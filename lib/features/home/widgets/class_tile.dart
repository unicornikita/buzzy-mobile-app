import 'package:buzzy_mobile/core/models/class_subject.dart';
import 'package:flutter/material.dart';

class ClassTile extends StatelessWidget {
  const ClassTile({super.key, required this.classSubject});

  final ClassSubject classSubject;
  @override
  Widget build(BuildContext context) {
    return Text(
      classSubject.className + 'HELLO WORLD',
      style: TextStyle(color: Colors.black),
    );
  }
}
