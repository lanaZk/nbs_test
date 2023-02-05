import 'package:dio/dio.dart';
import '../../general_export.dart';

class LanguageInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // options.headers['lang'] = getIsEn() ? "en" : "ar";
    super.onRequest(options, handler);
  }
}
