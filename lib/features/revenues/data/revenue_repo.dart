import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:nbs_test/features/revenues/data/revenue_api.dart';
import 'package:nbs_test/features/revenues/data/revenue_model/revenue_model.dart';
import 'package:nbs_test/features/revenues/data/revenue_model_filtered/revenue_model_filtered.dart';

class RevenueRepo {
  final DioRevenue _dio = DioRevenue();

  Future<RevenueModelFiltered> getAllOrder() async {
    try {
      var res = await _dio.getAllOrders();
      RevenueModelFiltered data = RevenueModelFiltered(listOrders: res);

      String now = "28 Aug 2021";
      DateFormat format = DateFormat("dd MMM yyyy");
      DateTime dateNow = format.parse(now);

      var nowAddWeek = dateNow.add(Duration(days: 7));
      var nowMonth = DateTime(dateNow.year, dateNow.month, 1);
      var addedMonth = DateTime(dateNow.year, dateNow.month + 1, 1);

      //#region today
      double sumToday = 0;
      var listToday = res.where((element) {
        var e = format.parse(element.orderDateTime ?? "");
        if (dateNow.compareTo(e) == 0) {
          sumToday += element.orderNetProfit;
          return true;
        }
        return false;
      }).toList();

      data = data.copyWith(
        listToday: listToday,
        sumToday: sumToday.toStringAsFixed(2),
      );
      //#endregion today

      //#region weekly
      double sumWeekly = 0;
      var listWeekly = res.where((element) {
        var e = format.parse(element.orderDateTime ?? "");
        if (dateNow.compareTo(e) == 0 ||
            (e.isBefore(nowAddWeek) && e.isAfter(dateNow))) {
          sumWeekly += element.orderNetProfit;
          return true;
        }
        return false;
      }).toList();

      data = data.copyWith(
        listWeekly: listWeekly,
        sumWeekly: sumWeekly.toStringAsFixed(2),
      );
      //#endregion today

      //#region monthly
      double sumMonthly = 0;
      var listMonthly = res.where((element) {
        var e = format.parse(element.orderDateTime ?? "");
        if (dateNow.compareTo(e) == 0 ||
            (e.isBefore(addedMonth) && e.isAfter(nowMonth))) {
          sumMonthly += element.orderNetProfit;
          return true;
        }
        return false;
      }).toList();

      data = data.copyWith(
        listMonthly: listMonthly,
        sumMonthly: sumMonthly.toStringAsFixed(2),
      );
      //#endregion today

      return data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
