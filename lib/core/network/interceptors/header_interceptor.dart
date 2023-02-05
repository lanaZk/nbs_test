import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Connection'] = 'keep-alive';
    //options.headers['Content-Type'] = 'application/x-www-form-urlencoded';
    options.headers['Accept'] = 'application/json';
    options.headers['User-Agent'] = 'PostmanRuntime/7.30.0';
    options.headers['Accept-Encoding'] = 'gzip, deflate, br';
    super.onRequest(options, handler);
  }
}
