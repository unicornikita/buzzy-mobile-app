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
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: widget.dailySchedule.classSubjects.length,
                  itemBuilder: (context, index) {
                    return ClassTile(
                      classSubject: widget.dailySchedule.classSubjects[index],
                    );
                  }))
        ],
      ),
    );
  }
}
