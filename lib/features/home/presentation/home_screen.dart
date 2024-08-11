import 'package:buzzy_mobile/core/models/weekly_schedule.dart';
import 'package:buzzy_mobile/features/home/widgets/class_list.dart';
import 'package:buzzy_mobile/features/home/widgets/class_tile.dart';
import 'package:buzzy_mobile/features/home/widgets/select_class_button.dart';
import 'package:buzzy_mobile/features/home/widgets/week_list.dart';
import 'package:buzzy_mobile/main.dart';
import 'package:buzzy_mobile/shared/providers/shared_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Adding a listener to classUrlProvider for immediate subscription to the Firebase topic
    ref.listen(classUrlProvider,
        (AsyncValue<String?>? previous, AsyncValue<String?>? next) async {
      if (next != null && next.value!.isNotEmpty) {
        final String? url = next.value;
        subscribeToFirebaseTopic(url!);
      }
    });
    AsyncValue<WeeklySchedule?> schedule =
        ref.watch(weeklyScheduleListProvider);
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          schedule = ref.refresh(weeklyScheduleListProvider);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              const WeekList(),
              const SizedBox(height: 16),
              schedule.when(data: (WeeklySchedule? data) {
                if (data?.dailySchedules?.isEmpty ?? true) {
                  return const ClassTile(isNextClass: false);
                }
                return const ClassList();
              }, error: (Object e, __) {
                return Text('An error occurred + $e');
              }, loading: () {
                return const CircularProgressIndicator();
              }),
              const SelectClassButton(),
            ],
          ),
        ),
      ),
    );
  }
}
