import 'package:buzzy_mobile/core/models/daily_schedule.dart';
import 'package:buzzy_mobile/features/home/widgets/class_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClassList extends ConsumerStatefulWidget {
  const ClassList({super.key, required this.dailySchedule});

  final DailySchedule dailySchedule;

  @override
  ConsumerState<ClassList> createState() => _ClassListState();
}

class _ClassListState extends ConsumerState<ClassList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: ListView.separated(
            itemCount: widget.dailySchedule.classSubjects.length,
            itemBuilder: (BuildContext context, int index) {
              final bool isNextClass = DateTime.now()
                  .add(
                    const Duration(minutes: 60),
                  )
                  .isAfter(widget.dailySchedule.classSubjects[index]
                      .classDuration.endTime);
              return ClassTile(
                isNextClass: isNextClass,
                classSubject: widget.dailySchedule.classSubjects[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 16);
            },
          ))
        ],
      ),
    );
  }
}
