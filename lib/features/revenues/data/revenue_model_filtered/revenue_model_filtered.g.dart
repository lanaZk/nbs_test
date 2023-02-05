// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_model_filtered.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RevenueModelFiltered _$$_RevenueModelFilteredFromJson(
        Map<String, dynamic> json) =>
    _$_RevenueModelFiltered(
      sumToday: json['sumToday'] as String?,
      sumWeekly: json['sumWeekly'] as String?,
      sumMonthly: json['sumMonthly'] as String?,
      listToday: (json['listToday'] as List<dynamic>?)
          ?.map((e) => RevenueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      listMonthly: (json['listMonthly'] as List<dynamic>?)
          ?.map((e) => RevenueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      listWeekly: (json['listWeekly'] as List<dynamic>?)
          ?.map((e) => RevenueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      listOrders: (json['listOrders'] as List<dynamic>?)
          ?.map((e) => RevenueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RevenueModelFilteredToJson(
        _$_RevenueModelFiltered instance) =>
    <String, dynamic>{
      'sumToday': instance.sumToday,
      'sumWeekly': instance.sumWeekly,
      'sumMonthly': instance.sumMonthly,
      'listToday': instance.listToday,
      'listMonthly': instance.listMonthly,
      'listWeekly': instance.listWeekly,
      'listOrders': instance.listOrders,
    };
