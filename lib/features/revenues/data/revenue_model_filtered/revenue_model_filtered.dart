// To parse this JSON data, do
//
//     final revenueModelFiltered = revenueModelFilteredFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:nbs_test/features/revenues/data/revenue_model/revenue_model.dart';

part 'revenue_model_filtered.freezed.dart';
part 'revenue_model_filtered.g.dart';

RevenueModelFiltered revenueModelFilteredFromJson(String str) => RevenueModelFiltered.fromJson(json.decode(str));

String revenueModelFilteredToJson(RevenueModelFiltered data) => json.encode(data.toJson());

@freezed
class RevenueModelFiltered with _$RevenueModelFiltered {
  const factory RevenueModelFiltered({
    String? sumToday,
    String? sumWeekly,
    String? sumMonthly,
    List<RevenueModel>? listToday,
    List<RevenueModel>? listMonthly,
    List<RevenueModel>? listWeekly,
    List<RevenueModel>? listOrders,
  }) = _RevenueModelFiltered;

  factory RevenueModelFiltered.fromJson(Map<String, dynamic> json) => _$RevenueModelFilteredFromJson(json);
}
