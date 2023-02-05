part of 'revenue_bloc.dart';


@immutable
abstract class RevenueEvent {}

class GetAllRevenue extends RevenueEvent {
  GetAllRevenue();
}