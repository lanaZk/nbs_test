import 'package:flutter/material.dart';
import 'package:nbs_test/core/general_export.dart';
import 'package:nbs_test/features/revenues/data/revenue_model_filtered/revenue_model_filtered.dart';
import 'package:nbs_test/features/revenues/data/utils.dart';
import 'package:nbs_test/features/revenues/presentation/widgets/revenue_list.dart';
import 'package:nbs_test/features/revenues/presentation/widgetsDetails/app_bar_details.dart';
import 'package:nbs_test/features/revenues/presentation/widgetsDetails/summary_details.dart';

class RevenueDetailsPage extends StatelessWidget {
  final FilterRevenue filterType;
  final RevenueModelFiltered data;

  const RevenueDetailsPage({
    Key? key,
    required this.filterType,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: orange,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: SvgPicture.asset(
                    Assets.icons.backgroundImage,
                    color: white.withOpacity(0.42),
                  )),
              Column(
                children: [
                  SizedBox(height: Adaptive.px(31)),
                  AppBarDetails(filterType: filterType),
                  SizedBox(height: Adaptive.px(11)),
                  SummaryDetails(data: data, filterType: filterType),
                  SizedBox(height: Adaptive.px(13)),
                  Divider(color: white.withOpacity(0.36)),
                  RevenueList(data: getDataFiltered(data, filterType)),
                  SizedBox(height: Adaptive.px(20)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
