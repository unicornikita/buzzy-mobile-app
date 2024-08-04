import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeekDay extends ConsumerStatefulWidget {
  const WeekDay(
      {required this.day,
      required this.onTap,
      required this.textColor,
      this.widgetColor,
      super.key});

  final Map<String, String> day;
  final void Function() onTap;
  final Color? widgetColor;
  final Color textColor;

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
              widget.day['name']!,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: widget.textColor,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              widget.day['date']!,
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
