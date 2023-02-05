// To parse this JSON data, do
//
//     final revenueModel = revenueModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'revenue_model.freezed.dart';
part 'revenue_model.g.dart';

List<RevenueModel> revenueModelFromJson(String str) => List<RevenueModel>.from(json.decode(str).map((x) => RevenueModel.fromJson(x)));

String revenueModelToJson(List<RevenueModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class RevenueModel with _$RevenueModel {
  const factory RevenueModel({
    String? orderNo,
    int? orderItemsCount,
    String? orderDateTime,
    dynamic orderSold,
    dynamic orderDriver,
    dynamic orderFood,
    dynamic orderCommission,
    dynamic orderNetProfit,
  }) = _RevenueModel;

  factory RevenueModel.fromJson(Map<String, dynamic> json) => _$RevenueModelFromJson(json);
}
