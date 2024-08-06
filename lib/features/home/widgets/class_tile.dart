import 'package:buzzy_mobile/core/models/class_subject.dart';
import 'package:buzzy_mobile/shared/utils/utils.dart';
import 'package:flutter/material.dart';

class ClassTile extends StatelessWidget {
  const ClassTile({
    super.key,
    required this.isNextClass,
    this.classSubject,
  });
  final bool isNextClass;
  final ClassSubject? classSubject;
  @override
  Widget build(BuildContext context) {
    final textColor =
        isNextClass ? Colors.black : Theme.of(context).disabledColor;
    final containerColor = isNextClass
        ? Theme.of(context).primaryColor
        : Theme.of(context).hintColor;
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        border: Border.all(color: containerColor),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: classSubject != null
            ? <Widget>[
                Text(
                  '${formatDate(classSubject!.classDuration.startTime)} - ${formatDate(classSubject!.classDuration.endTime)}',
                  style: theme.textTheme.bodyMedium?.copyWith(color: textColor),
                ),
                const SizedBox(height: 8),
                Text(
                  classSubject!.className,
                  style:
                      theme.textTheme.titleMedium?.copyWith(color: textColor),
                ),
                const SizedBox(height: 8),
                Text(
                  '${classSubject!.professor}, ${classSubject!.classroom}',
                  style: theme.textTheme.bodyMedium?.copyWith(color: textColor),
                ),
              ]
            : <Widget>[
                const SizedBox(height: 8),
                Text('Urnik ni izbran', style: theme.textTheme.titleMedium),
                const SizedBox(height: 8),
              ],
      ),
    );
  }
}
