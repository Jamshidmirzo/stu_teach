import 'package:dio/dio.dart';

class DioConfig {
  final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://stuteach-f083d-default-rtdb.firebaseio.com/',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  )..interceptors.add(InterCeptorDio());

  get client => _dio;
}

class InterCeptorDio implements InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
  }
}
