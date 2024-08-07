import 'package:buzzy_mobile/features/home/widgets/week_day.dart';
import 'package:buzzy_mobile/shared/providers/shared_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart'; // For date formatting

class WeekList extends ConsumerStatefulWidget {
  const WeekList({super.key});

  @override
  ConsumerState<WeekList> createState() => _WeekListState();
}

class _WeekListState extends ConsumerState<WeekList> {
  List<DateTime> _generateWeekDays() {
    final DateTime now = DateTime.now();
    final List<DateTime> days = <DateTime>[];

    // Generate the list of weekdays, starting from today and including next 14 days to account for weekends
    for (int i = 0; i < 14; i++) {
      final DateTime date = now.add(Duration(days: i));
      days.add(date);
    }

    // Filter out Saturday and Sunday
    final List<DateTime> filteredDays = days
        .where((DateTime date) =>
            date.weekday != DateTime.saturday &&
            date.weekday != DateTime.sunday)
        .toList();

    // Ensure we get the first 10 weekdays starting from today
    final List<DateTime> orderedDays = filteredDays.take(10).toList();

    return orderedDays;
  }

  @override
  Widget build(BuildContext context) {
    final int selectedDay = ref.watch(selectedDayProvider);
    final List<DateTime> daysOfWeek = _generateWeekDays();
    final ThemeData theme = Theme.of(context);
    final DateFormat dayFormat =
        DateFormat.E('sl_SI'); // Short name for the day in Slovenian

    return Container(
      height: MediaQuery.sizeOf(context).height * 0.15,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: daysOfWeek.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final bool isSelected = selectedDay == index;
          final DateTime date = daysOfWeek[index];
          final String dayName = dayFormat
              .format(date)
              .toUpperCase()
              .replaceAll('.', ''); // Remove the dot
          final String dayDate =
              DateFormat('d').format(date); // Day of the month

          return WeekDay(
            dayName: dayName,
            dayDate: dayDate,
            widgetColor: isSelected
                ? theme.colorScheme.primary
                : theme.scaffoldBackgroundColor,
            textColor: isSelected ? Colors.white : Colors.black,
            onTap: () {
              ref.read(selectedDayProvider.notifier).setSelectedDay(index);
              ref
                  .read(selectedDailyScheduleIndexProvider.notifier)
                  .setSelectedDailyScheduleIndex(date.weekday - 1);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16.0);
        },
      ),
    );
  }
}
