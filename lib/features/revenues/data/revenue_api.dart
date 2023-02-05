import 'package:dio/dio.dart';
import 'package:nbs_test/features/revenues/data/revenue_model/revenue_model.dart';
import '../../../core/network/dio_expception.dart';
import '../../../core/network/endpoints.dart';
import '../../../core/network/interceptors/interceptors.dart';
import '../../../../core/general_export.dart';

class DioRevenue {
  DioRevenue()
      : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: Endpoints.connectionTimeout,
            receiveTimeout: Endpoints.receiveTimeout,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            LoggerInterceptor(),
            LanguageInterceptor(),
            AuthorizationInterceptor(),
            HeaderInterceptor(),
          ]);


  late final Dio _dio;

  Future<List<RevenueModel>> getAllOrders() async {
    try {
      var res = await _dio.get("/GetAllOrders");
      return revenueModelFromJson(res.toString());
    } on DioError catch (err) {
      String errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch(e){
      throw e;
    }
  }
}
