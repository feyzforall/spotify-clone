import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.response?.statusCode) {
      case 401:
      // TODO : reauthenticate
      case 403:
      // Bad OAuth request (wrong consumer key, bad nonce, expired timestamp...). Unfortunately, re-authenticating the user won't help here.
      case 409:
      // The app has exceeded its rate limits.

      default:
    }
    super.onError(err, handler);
  }
}
