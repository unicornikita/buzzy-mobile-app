import 'package:buzzy_mobile/core/models/class_subject.dart';
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
    // Retrieve the selected schedule and classes from providers
    final int selectedDailyScheduleIndex =
        ref.watch(selectedDailyScheduleIndexProvider);
    final DailySchedule dailySchedule = ref
        .watch(weeklyScheduleListProvider)
        .value!
        .dailySchedules![selectedDailyScheduleIndex];

    return Expanded(
      child: _buildClassList(dailySchedule),
    );
  }

  // Helper method to build the main class list
  Widget _buildClassList(DailySchedule dailySchedule) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: dailySchedule.classSubjects.length,
      itemBuilder: (BuildContext context, int index) {
        final ClassSubject currentClass = dailySchedule.classSubjects[index];
        final bool isNextClass =
            _isNextClass(currentClass.classDuration.startTime);

        // Check if the class has sub-classes (classSubjects)
        if (currentClass.classSubjects?.isNotEmpty ?? false) {
          return _buildSubClassList(currentClass, isNextClass);
        }

        // Return the class tile when no sub-classes are present
        return ClassTile(
          isNextClass: isNextClass,
          classSubject: currentClass,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 16);
      },
    );
  }

  // Helper method to check if a class is the next one (starting soon)
  bool _isNextClass(DateTime classStartTime) {
    final int selectedDay = ref.watch(selectedDayProvider);
    if (selectedDay == 0) {
      final DateTime now = DateTime.now();
      final DateTime startTime = DateTime(now.year, now.month, now.day,
          classStartTime.hour, classStartTime.minute);
      // Check if this class is the first one within the next 60 minutes
      if (startTime.isAfter(now) &&
          startTime.isBefore(now.add(const Duration(minutes: 60)))) {
        // Check if the current classStartTime is the next class
        return true;
      }
    }

    return false;
  }

  // Helper method to build a list of sub-classes if any are present
  Widget _buildSubClassList(ClassSubject currentClass, bool isNextClass) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: currentClass.classSubjects!.length + 1,
        itemBuilder: (BuildContext context, int index) {
          // If index is 0, show the current class, otherwise show sub-classes
          return ClassTile(
            isNextClass: isNextClass,
            classSubject: index == 0
                ? currentClass
                : currentClass.classSubjects![index - 1],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}
