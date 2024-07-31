import 'package:buzzy_mobile/core/models/weekly_schedule.dart';
import 'package:dio/dio.dart';

class ApiService {
  ApiService(this.dio);
  final Dio dio;

  Future<WeeklySchedule> getWeeklySchedule(String classURL) async {
    final Response<dynamic> response = await dio.get('/$classURL');
    return WeeklySchedule.fromJson(response.data as Map<String, dynamic>);
  }
}
