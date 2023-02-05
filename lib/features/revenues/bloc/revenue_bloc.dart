import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nbs_test/core/general_export.dart';
import 'package:nbs_test/features/revenues/data/revenue_api.dart';
import 'package:nbs_test/features/revenues/data/revenue_model/revenue_model.dart';
import 'package:nbs_test/features/revenues/data/revenue_model_filtered/revenue_model_filtered.dart';
import 'package:nbs_test/features/revenues/data/revenue_repo.dart';

part 'revenue_event.dart';

part 'revenue_state.dart';
part 'revenue_bloc.freezed.dart';

class RevenueBloc extends Bloc<RevenueEvent, RevenueState> {
  RevenueRepo repo;
  RevenueBloc(this.repo) : super(const Initial()) {
    on<GetAllRevenue>(_getRevenue);
  }


  void _getRevenue(GetAllRevenue event, Emitter<RevenueState> emit) async {
    try {
      emit(const RevenueState.loading());
      RevenueModelFiltered resList = await repo.getAllOrder();
      emit(RevenueState.revenuesLoaded(data: resList));
    } catch (ex) {
      emit(RevenueState.failure(message: ex.toString()));
    }
  }
}
