import 'package:buzzy_mobile/core/constants/ui_colors.dart';
import 'package:buzzy_mobile/core/models/class_duration.dart';
import 'package:buzzy_mobile/core/models/class_subject.dart';
import 'package:buzzy_mobile/core/models/daily_schedule.dart';
import 'package:buzzy_mobile/core/models/user_events.dart';
import 'package:buzzy_mobile/core/models/weekly_schedule.dart';
import 'package:buzzy_mobile/features/home/presentation/home_screen.dart';
import 'package:buzzy_mobile/firebase_options.dart';
import 'package:buzzy_mobile/shared/providers/shared_providers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  Hive
    ..registerAdapter(WeeklyScheduleAdapter())
    ..registerAdapter(DailyScheduleAdapter())
    ..registerAdapter(ClassSubjectAdapter())
    ..registerAdapter(ClassDurationAdapter())
    ..registerAdapter(UserEventsAdapter())
    ..registerAdapter(ClassStatusAdapter());
  await Hive.openBox<WeeklySchedule>('weeklyScheduleBox');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    final Future<String?> classUrl =
        ref.watch(classUrlProvider.notifier).getClassUrL();
    FirebaseMessaging.instance.subscribeToTopic('nextClass/$classUrl');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      localizationsDelegates: const <LocalizationsDelegate>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      home: const HomeScreen(),
    );
  }
}
