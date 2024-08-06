import 'package:buzzy_mobile/core/models/daily_schedule.dart';
import 'package:buzzy_mobile/features/home/widgets/class_tile.dart';
import 'package:buzzy_mobile/shared/providers/shared_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClassList extends ConsumerStatefulWidget {
  const ClassList({super.key});

  @override
  ConsumerState<ClassList> createState() => _ClassListState();
}

class _ClassListState extends ConsumerState<ClassList> {
  @override
  Widget build(BuildContext context) {
    final int selectedDailyScheduleIndex =
        ref.watch(selectedDailyScheduleIndexProvider);
    final DailySchedule dailySchedule = ref
        .read(weeklyScheduleProvider)
        .value!
        .dailySchedules![selectedDailyScheduleIndex];
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: ListView.separated(
            itemCount: dailySchedule.classSubjects.length,
            itemBuilder: (BuildContext context, int index) {
              final bool isNextClass = DateTime.now()
                  .add(
                    const Duration(minutes: 60),
                  )
                  .isAfter(
                      dailySchedule.classSubjects[index].classDuration.endTime);
              return ClassTile(
                isNextClass: isNextClass,
                classSubject: dailySchedule.classSubjects[index],
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
