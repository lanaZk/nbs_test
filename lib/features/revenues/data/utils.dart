import 'package:nbs_test/features/revenues/data/revenue_model/revenue_model.dart';
import 'package:nbs_test/features/revenues/data/revenue_model_filtered/revenue_model_filtered.dart';

enum FilterRevenue { today, weekly, monthly }

String getFilterName(FilterRevenue filter) {
  switch (filter) {
    case FilterRevenue.today:
      return "Todays Revenue";
    case FilterRevenue.weekly:
      return "Week so far";
    case FilterRevenue.monthly:
      return "Monthly Revenue";
  }
}

List<RevenueModel> getDataFiltered(
    RevenueModelFiltered data, FilterRevenue filter) {
  switch (filter) {
    case FilterRevenue.today:
      return data.listToday ?? [];
    case FilterRevenue.weekly:
      return data.listWeekly ?? [];
    case FilterRevenue.monthly:
      return data.listMonthly ?? [];
  }
}

String getDataSumFiltered(RevenueModelFiltered data, FilterRevenue filter) {
  switch (filter) {
    case FilterRevenue.today:
      return data.sumToday ?? "";
    case FilterRevenue.weekly:
      return data.sumWeekly ?? "";
    case FilterRevenue.monthly:
      return data.sumMonthly ?? "";
  }
}
