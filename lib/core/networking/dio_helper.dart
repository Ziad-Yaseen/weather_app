import 'package:dio/dio.dart';
import 'package:weather_app/core/networking/api_endpoints.dart';

class DioHelper {
  static Dio? dio;

  static void initDio() {
    dio ??= Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
  }

  static Future<Response<dynamic>> getRequest({
    required String endPoint,
    required Map<String, dynamic> queryParams,
  }) async {
    if (dio == null) initDio();
    try {
      Response response = await dio!.get(
        endPoint,
        queryParameters: queryParams,
      );
      return response;
    } on DioException catch (e) {
      throw Exception(e.message ?? 'Server Error');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
