import 'package:dio/dio.dart';

import '../../general_export.dart';

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // var token = await getToken();
    // options.headers['Authorization'] = token;
    super.onRequest(options, handler);
  }
}
