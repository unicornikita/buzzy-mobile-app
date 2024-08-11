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
        .watch(weeklyScheduleListProvider)
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
              // Assuming dailySchedule.classSubjects is sorted by class start time
              bool isNextClass = false;
              final currentClass = dailySchedule.classSubjects[index];
              if (currentClass.className.isNotEmpty) {
// Get the current time
                final DateTime now = DateTime.now();

// Iterate over the classes to determine the next class

                final DateTime classStartTime =
                    currentClass.classDuration.startTime;

                // If the class starts after the current time and is within the next hour
                if (classStartTime.isAfter(now) &&
                    classStartTime
                        .isBefore(now.add(const Duration(minutes: 60)))) {
                  isNextClass = true;
                }
                return ClassTile(
                  isNextClass: isNextClass,
                  classSubject: currentClass,
                );
              } else {
                return ClassTile(isNextClass: false);
              }
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
