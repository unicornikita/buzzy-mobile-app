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
Future<WeeklySchedule?> weeklySchedule(
    WeeklyScheduleRef ref, String classURL) async {
  final ApiService apiService = ref.watch(apiServiceProvider);
  final WeeklyScheduleRepository weeklyScheduleRepository =
      ref.watch(weeklyScheduleRepositoryProvider);

  // if the weekly schedule has been fetched today, do not fetch it again
  final sharedPrefs = await SharedPreferences.getInstance();
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
  if (weeklySchedule == null) {
    weeklySchedule = await apiService
        .getWeeklySchedule(Uri.encodeComponent(classURL)); // EXPLAIN THIS
    await weeklyScheduleRepository.saveWeeklySchedule(weeklySchedule);
  }
  return weeklySchedule;
}
