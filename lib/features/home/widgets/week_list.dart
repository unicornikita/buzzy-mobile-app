import 'package:buzzy_mobile/features/home/widgets/week_day.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting

class WeekList extends StatelessWidget {
  const WeekList({super.key});

  List<Map<String, String>> _generateWeekDays() {
    final now = DateTime.now();
    final DateFormat dayFormat =
        DateFormat.E('sl_SI'); // Short name for the day in Slovenian
    final List<Map<String, String>> days = [];

    // Generate the list of weekdays, starting from today and including next 14 days to account for weekends
    for (int i = 0; i < 14; i++) {
      final date = now.add(Duration(days: i));
      final dayName = dayFormat.format(date).toUpperCase().replaceAll(
          '.', ''); //remove the dot at the end of the shortened day name
      final dayDate = DateFormat('d').format(date); // Day of the month
      days.add({'name': dayName, 'date': dayDate});
    }

    // Filter out Saturday and Sunday
    final filteredDays = days
        .where((day) => day['name'] != 'SOB' && day['name'] != 'NED')
        .toList();

    // Ensure we get the first 10 weekdays starting from today
    final orderedDays = filteredDays.take(10).toList();

    return orderedDays;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> daysOfWeek = _generateWeekDays();

    return Container(
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: ThemeData.light().primaryColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(8),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: daysOfWeek.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final Map<String, String> day = daysOfWeek[index];
          return WeekDay(
            day: day,
            onTap: () {
              // Do something when a day is tapped
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}
