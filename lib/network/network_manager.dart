import 'package:dio/dio.dart';

import '../const/endpoints.dart';
import 'error_interceptor.dart';

class NetworkManager {
  final Dio dio;

  NetworkManager(this.dio) {
    dio.options.baseUrl = Endpoints.baseUrl;
    dio.interceptors.add(ErrorInterceptor());
    dio.options.headers = {
      "Authorization": "Bearer " + _token,
    };
  }

  static const String _token =
      "BQDqjxdMz_B9y70GArNfU5XFg84KadgN0XT_A8w_IUIiuKT8mhoLiBab3JMYNywwtlAvLxiZWDjHbuodFseN7r5d9FsQ-kW4KAkSD1nQWZNSMOSeBtvLPLqETgf4Bi1mdWt0HRVrJd7aKHftOjXYVntEviOys1mC0g3PAEWq7YLJuwV67VfPs4eAAQAVMksO7VCD";

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.get(path);
      return response;
    } on DioError {
      rethrow;
    }
  }
}
