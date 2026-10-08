import 'package:weather_app/core/networking/api_endpoints.dart';
import 'package:weather_app/core/networking/api_key.dart';
import 'package:weather_app/core/networking/dio_helper.dart';

class WeatherService {
  Future<dynamic> getWeather({required String city}) async {
    try {
      Map<String, dynamic> queryParams = {'key': ApiKey.key, 'q': city};

      final response = await DioHelper.getRequest(
        endPoint: ApiEndpoints.forecast,
        queryParams: queryParams,
      );

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
