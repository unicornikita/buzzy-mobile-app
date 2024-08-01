import 'package:buzzy_mobile/core/models/weekly_schedule.dart';
import 'package:buzzy_mobile/features/home/widgets/class_list.dart';
import 'package:buzzy_mobile/features/home/widgets/week_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/providers/shared_providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<WeeklySchedule?> schedule = ref.watch(weeklyScheduleProvider(
        'https://www.easistent.com/urniki/5738623c4f3588f82583378c44ceb026102d6bae/razredi/523573'));
    return schedule.when(data: (data) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('razred'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              WeekList(),
              ClassList(
                dailySchedule:
                    data!.dailySchedules![DateTime.now().weekday - 1],
              ),
              Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View all',
                        style: TextStyle(color: Colors.black),
                      ))),
            ],
          ),
        ),
      );
    }, error: (_, __) {
      return const Text('An error occurred');
    }, loading: () {
      return const CircularProgressIndicator();
    });
  }
}
