import 'package:dio/dio.dart';

// dio package  is an HTTP client library for Dart and Flutter.
class DioHelper {
  // By making the dio variable static, it can be accessed and used throughout your application.
  static Dio? dio;

  // static to be able to access it easily
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'http://192.168.1.23:7046/',
      receiveDataWhenStatusError: true,
    ));
  }

  // the return value of the get is future
  static Future<Response?>? getData({
    // The argument type 'Map<dynamic, dynamic>' can't be assigned to the parameter type 'Map<String, dynamic>?'
    required String url,
    //required Map<String, dynamic> query,
  }) async {
    return await dio?.get(
      url,
      //queryParameters: query,
    );
  }
}
