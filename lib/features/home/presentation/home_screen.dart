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
    final currentWeekday = DateTime.now().weekday;
    AsyncValue<WeeklySchedule?> schedule = ref.watch(weeklyScheduleProvider(
        'https://www.easistent.com/urniki/5738623c4f3588f82583378c44ceb026102d6bae/razredi/523573'));
    return schedule.when(data: (data) {
      return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            schedule = ref.refresh(weeklyScheduleProvider(
                // TODO: add provider for class url
                'https://www.easistent.com/urniki/5738623c4f3588f82583378c44ceb026102d6bae/razredi/523573'));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: <Widget>[
                WeekList(),
                const SizedBox(height: 16),
                ClassList(
                  dailySchedule: (currentWeekday == 7 || currentWeekday == 6)
                      ? data!.dailySchedules![0]
                      : data!.dailySchedules![DateTime.now().weekday - 1],
                ),
                const SizedBox(height: 16),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      backgroundColor: Theme.of(context).colorScheme.tertiary),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 16.0,
                    ),
                    child: Text(
                      'IZBERI URNIK',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).scaffoldBackgroundColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
        ),
      );
    }, error: (Object e, __) {
      return Text('An error occurred + ${e.toString()}');
    }, loading: () {
      return const CircularProgressIndicator();
    });
  }
}
