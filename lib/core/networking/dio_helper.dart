import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static void initDio() {
    dio ??= Dio(
      BaseOptions(
        
      ),
    );
  }
}