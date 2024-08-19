import 'package:buzzy_mobile/core/models/class_subject.dart';
import 'package:buzzy_mobile/core/models/daily_schedule.dart';
import 'package:buzzy_mobile/core/models/weekly_schedule.dart';
import 'package:buzzy_mobile/core/repositories/weekly_schedule_repository.dart';
import 'package:buzzy_mobile/core/services/api/api_service.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_providers.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final BaseOptions options = BaseOptions(
    baseUrl: 'https://nikita.kocjancic.info/schedule',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  );
  final Dio dio = Dio(options);
  dio.interceptors.add(RetryInterceptor(
    dio: dio,
  ));
  return dio;
}

@riverpod
ApiService apiService(ApiServiceRef ref) {
  final Dio dio = ref.watch(dioProvider);
  return ApiService(dio);
}

@riverpod
WeeklyScheduleRepository weeklyScheduleRepository(
    WeeklyScheduleRepositoryRef ref) {
  return WeeklyScheduleRepository();
}

@riverpod
class WeeklyScheduleList extends _$WeeklyScheduleList {
  @override
  Future<WeeklySchedule?> build() async {
    final ApiService apiService = ref.watch(apiServiceProvider);
    final WeeklyScheduleRepository weeklyScheduleRepository =
        ref.watch(weeklyScheduleRepositoryProvider);

    final String? classURL = await ref.watch(classUrlProvider.future);
    final String? classID = classURL?.split('/').last;
    // if the weekly schedule has been fetched today, do not fetch it again
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    final String currentDate = DateTime.now().toString();
    final String? lastFetchDate = sharedPrefs.getString('lastFetchDate');
    // if today's date is different from the last fetch date, clear cache and fetch again
    if (currentDate != lastFetchDate &&
        DateTime.now().weekday != 6 &&
        DateTime.now().weekday != 7) {
      await sharedPrefs.setString('lastFetchDate', currentDate);
      await weeklyScheduleRepository.deleteWeeklySchedule(classID!);
    }
    // attempt to fetch the weekly schedule from the local database
    WeeklySchedule? weeklySchedule =
        await weeklyScheduleRepository.getWeeklySchedule(classID ?? '');
    //fetch the weekly schedule from the API if it is not found in the local database
    if (weeklySchedule == null && classURL != null) {
      weeklySchedule =
          await apiService.getWeeklySchedule(Uri.encodeComponent(classURL));
      await weeklyScheduleRepository.saveWeeklySchedule(
          weeklySchedule, classID!);
    }
    return weeklySchedule;
  }

  Future<void> updateWeeklySchedule(DailySchedule updatedDailySchedule) async {
    final List<DailySchedule>? weeklySchedule = state.value?.dailySchedules;
    final int dailyScheduleIndex =
        ref.watch(selectedDailyScheduleIndexProvider);
    weeklySchedule?[dailyScheduleIndex] = updatedDailySchedule;
    final String? classURL = await ref.watch(classUrlProvider.future);
    final String? classID = classURL?.split('/').last;

    final WeeklySchedule? updatedWeeklySchedule =
        state.value?.copyWith(dailySchedules: weeklySchedule);

    state = AsyncValue<WeeklySchedule?>.data(updatedWeeklySchedule);

    ref.watch(weeklyScheduleRepositoryProvider).saveWeeklySchedule(
          updatedWeeklySchedule!,
          classID!,
        );
  }
}

@riverpod
class ClassUrl extends _$ClassUrl {
  @override
  Future<String?> build() async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.getString('classURL');
  }

  Future<void> setClassUrl(String classURL) async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setString('classURL', classURL);

    state = AsyncValue<String>.data(classURL);
  }

  Future<String> getClassUrL() async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    final String? classUrl = sharedPrefs.getString('classURL');
    return classUrl ?? '';
  }
}

@riverpod
class SelectedDay extends _$SelectedDay {
  @override
  int build() {
    return 0;
  }

  void setSelectedDay(int day) {
    state = day;
  }
}

@riverpod
class SelectedDailyScheduleIndex extends _$SelectedDailyScheduleIndex {
  @override
  int build() {
    if (DateTime.now().weekday == 6 || DateTime.now().weekday == 7) {
      return 0;
    }
    return DateTime.now().weekday - 1;
  }

  void setSelectedDailyScheduleIndex(int index) {
    state = index;
  }
}

//this provider is responsible for selecting the class subject within a daily schedule for
//updating the free period with custom class name and optional class details and
//eventually saving this in the local database for the chosen day

@riverpod
class SelectedClassSubject extends _$SelectedClassSubject {
  DailySchedule?
      _dailySchedule; // Hold the daily schedule that contains the selected class subject

  @override
  ClassSubject? build() {
    return null; // Initially, no class subject is selected
  }

  // Method to select a class subject within a daily schedule
  void selectClassSubject(ClassSubject classSubject) {
    final int dailyScheduleIndex =
        ref.watch(selectedDailyScheduleIndexProvider);
    _dailySchedule = ref
        .watch(weeklyScheduleListProvider)
        .value!
        .dailySchedules![dailyScheduleIndex];
    state = classSubject;
  }

  // Method to update a free period with a custom class name and optional details
  Future<void> updateFreePeriod(
    String className, {
    String? professor,
    String? classroom,
  }) async {
    if (state == null || _dailySchedule == null) {
      // Handle the case where no class subject or daily schedule is selected
      return;
    }

    final ClassSubject updatedClassSubject = state!.copyWith(
      className: className,
      professor: professor,
      classroom: classroom,
    );

    // Find the index of the current class subject in the daily schedule
    final int classSubjectIndex = _dailySchedule!.classSubjects.indexWhere(
        (ClassSubject cs) => cs.classDuration == state!.classDuration);
    if (classSubjectIndex != -1) {
      // Update the class subject in the daily schedule
      _dailySchedule!.classSubjects[classSubjectIndex] = updatedClassSubject;
    }
    ref
        .watch(weeklyScheduleListProvider.notifier)
        .updateWeeklySchedule(_dailySchedule!);
    // Update the provider state
    state = updatedClassSubject;
  }
}
