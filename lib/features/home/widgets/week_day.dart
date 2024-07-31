import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeekDay extends ConsumerStatefulWidget {
  const WeekDay({required this.day, required this.onTap, super.key});

  final Map<String, String> day;
  final void Function() onTap;

  @override
  ConsumerState<WeekDay> createState() => _WeekDayState();
}

class _WeekDayState extends ConsumerState<WeekDay> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.15,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ThemeData.light().highlightColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.day['name']!,
                style: const TextStyle(color: Colors.white, fontSize: 20)),
            const SizedBox(height: 4),
            Text(widget.day['date']!, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
