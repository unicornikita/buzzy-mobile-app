import 'package:flutter/material.dart';

class WeekList extends StatelessWidget {
  const WeekList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(
          8.0,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
              ),
              child: const Column(children: [
                Text("MON"),
                Spacer(),
                Text("1"),
              ]));
        },
      ),
    );
  }
}
