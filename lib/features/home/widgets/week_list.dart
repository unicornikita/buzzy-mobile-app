import 'package:buzzy_mobile/features/home/widgets/week_day.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting

class WeekList extends StatelessWidget {
  const WeekList({super.key});

  List<Map<String, String>> _generateWeekDays() {
    final DateTime now = DateTime.now();
    final DateFormat dayFormat =
        DateFormat.E('sl_SI'); // Short name for the day in Slovenian
    final List<Map<String, String>> days = <Map<String, String>>[];

    // Generate the list of weekdays, starting from today and including next 14 days to account for weekends
    for (int i = 0; i < 14; i++) {
      final DateTime date = now.add(Duration(days: i));
      final String dayName = dayFormat.format(date).toUpperCase().replaceAll(
          '.', ''); //remove the dot at the end of the shortened day name
      final String dayDate = DateFormat('d').format(date); // Day of the month
      days.add(<String, String>{'name': dayName, 'date': dayDate});
    }

    // Filter out Saturday and Sunday
    final List<Map<String, String>> filteredDays = days
        .where((Map<String, String> day) =>
            day['name'] != 'SOB' && day['name'] != 'NED')
        .toList();

    // Ensure we get the first 10 weekdays starting from today
    final List<Map<String, String>> orderedDays =
        filteredDays.take(10).toList();

    return orderedDays;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> daysOfWeek = _generateWeekDays();
    final theme = Theme.of(context);
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.13,
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
          final isSelected = index == 0;
          final Map<String, String> day = daysOfWeek[index];
          return WeekDay(
            day: day,
            widgetColor: isSelected
                ? theme.colorScheme.primary
                : theme.scaffoldBackgroundColor,
            textColor: isSelected ? Colors.white : Colors.black,
            onTap: () {
              // Do something when a day is tapped
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
