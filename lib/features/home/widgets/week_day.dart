import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeekDay extends ConsumerStatefulWidget {
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
  ConsumerState<WeekDay> createState() => _WeekDayState();
}

class _WeekDayState extends ConsumerState<WeekDay> {
  @override
  Widget build(BuildContext context) {
    final ThemeData colors = Theme.of(context);
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.15,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: widget.widgetColor ?? colors.colorScheme.primary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.dayName,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: widget.textColor,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              widget.dayDate,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: widget.textColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
