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
Future<WeeklySchedule?> weeklySchedule(WeeklyScheduleRef ref) async {
  final ApiService apiService = ref.watch(apiServiceProvider);
  final WeeklyScheduleRepository weeklyScheduleRepository =
      ref.watch(weeklyScheduleRepositoryProvider);

  final String? classURL = await ref.watch(classUrlProvider.future);

  // if the weekly schedule has been fetched today, do not fetch it again
  final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
  final String currentDate = DateTime.now().toString();
  final String? lastFetchDate = sharedPrefs.getString('lastFetchDate');
  // if today's date is different from the last fetch date, clear cache and fetch again
  if (currentDate != lastFetchDate) {
    await sharedPrefs.setString('lastFetchDate', currentDate);
    await weeklyScheduleRepository.deleteWeeklySchedule();
  }
  // attempt to fetch the weekly schedule from the local database
  WeeklySchedule? weeklySchedule =
      await weeklyScheduleRepository.getWeeklySchedule();
  //fetch the weekly schedule from the API if it is not found in the local database
  if (weeklySchedule == null && classURL != null) {
    weeklySchedule = await apiService
        .getWeeklySchedule(Uri.encodeComponent(classURL)); // EXPLAIN THIS
    await weeklyScheduleRepository.saveWeeklySchedule(weeklySchedule);
  }

  return weeklySchedule;
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

    state = AsyncValue.data(classURL);
  }

  Future<String?> getClassUrL() async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.getString('classURL');
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
    return DateTime.now().weekday - 1;
  }

  void setSelectedDailyScheduleIndex(int index) {
    state = index;
  }
}
