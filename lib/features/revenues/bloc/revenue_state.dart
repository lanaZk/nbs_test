part of 'revenue_bloc.dart';

@freezed
class RevenueState with _$RevenueState {
  const factory RevenueState.revenuesLoaded(
      {required RevenueModelFiltered data}) = RevenueLoaded;

  const factory RevenueState.loading() = Loading;

  const factory RevenueState.failure({
    required String message,
  }) = Failure;

  const factory RevenueState.init() = Initial;
}
