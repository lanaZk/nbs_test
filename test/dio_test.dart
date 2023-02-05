import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nbs_test/core/general_export.dart';

void main() async {

  final dio = Dio(BaseOptions());
  const path = '$baseUrl/GetAllOrders';

  test('test API Get All Orders', () async {
    final response = await dio.get(path);
    expect(200, response.statusCode);
  });
}
