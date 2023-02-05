// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RevenueModel _$$_RevenueModelFromJson(Map<String, dynamic> json) =>
    _$_RevenueModel(
      orderNo: json['orderNo'] as String?,
      orderItemsCount: json['orderItemsCount'] as int?,
      orderDateTime: json['orderDateTime'] as String?,
      orderSold: json['orderSold'],
      orderDriver: json['orderDriver'],
      orderFood: json['orderFood'],
      orderCommission: json['orderCommission'],
      orderNetProfit: json['orderNetProfit'],
    );

Map<String, dynamic> _$$_RevenueModelToJson(_$_RevenueModel instance) =>
    <String, dynamic>{
      'orderNo': instance.orderNo,
      'orderItemsCount': instance.orderItemsCount,
      'orderDateTime': instance.orderDateTime,
      'orderSold': instance.orderSold,
      'orderDriver': instance.orderDriver,
      'orderFood': instance.orderFood,
      'orderCommission': instance.orderCommission,
      'orderNetProfit': instance.orderNetProfit,
    };
