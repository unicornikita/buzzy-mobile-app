import 'package:flutter/material.dart';

class WeekDay extends StatelessWidget {
  const WeekDay({
    required this.dayName,
    required this.dayDate,
    required this.widgetColor,
    required this.textColor,
    required this.onTap,
    super.key,
  });

  final String dayName;
  final String dayDate;
  final Color widgetColor;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: widgetColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              dayName,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              dayDate,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: textColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
