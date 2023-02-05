import 'package:flutter/material.dart';
import 'package:nbs_test/features/revenues/data/revenue_model_filtered/revenue_model_filtered.dart';
import 'package:nbs_test/features/revenues/data/utils.dart';

import '../../../../core/general_export.dart';

class SummaryDetails extends StatelessWidget {
  final FilterRevenue filterType;
  final RevenueModelFiltered data;

  const SummaryDetails({
    Key? key,
    required this.filterType,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Adaptive.px(24)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${getDataSumFiltered(data, filterType)} T/',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.bold,
              fontSize: Adaptive.px(23),
            ),
          ),
          Text(
            '${getDataFiltered(data, filterType).length} Order',
            style: const TextStyle().detailsText().copyWith(color: white),
          ),
        ],
      ),
    );
  }
}
