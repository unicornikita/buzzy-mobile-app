import 'package:buzzy_mobile/core/constants/ui_colors.dart';
import 'package:buzzy_mobile/core/models/class_duration.dart';
import 'package:buzzy_mobile/core/models/class_subject.dart';
import 'package:buzzy_mobile/core/models/daily_schedule.dart';
import 'package:buzzy_mobile/core/models/user_events.dart';
import 'package:buzzy_mobile/core/models/weekly_schedule.dart';
import 'package:buzzy_mobile/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive
    ..registerAdapter(WeeklyScheduleAdapter())
    ..registerAdapter(DailyScheduleAdapter())
    ..registerAdapter(ClassSubjectAdapter())
    ..registerAdapter(ClassDurationAdapter())
    ..registerAdapter(UserEventsAdapter());
  await Hive.openBox<WeeklySchedule>('weeklyScheduleBox');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      home: HomeScreen(),
    );
  }
}
