import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nbs_test/core/general_export.dart';
import 'package:nbs_test/features/revenues/data/revenue_model_filtered/revenue_model_filtered.dart';
import 'package:nbs_test/features/revenues/data/utils.dart';

class FilterWidget extends StatelessWidget {
  final FilterRevenue filter;
  final RevenueModelFiltered data;

  const FilterWidget({
    Key? key,
    required this.filter,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3.3,
      child: InkWell(
        onTap: () {
          context.router.push(RevenueDetailsPageRoute(
            filterType: filter,
            data: data,
          ));
        },
        child: Container(
          padding: EdgeInsetsDirectional.only(start: Adaptive.px(13)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Adaptive.px(10)),
            color: lightOrange,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: Adaptive.px(11)),
              Text(
                getFilterName(filter),
                style: TextStyle(
                  color: white,
                  fontSize: Adaptive.px(12),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    getDataSumFiltered(data, filter),
                    style: const TextStyle().titleText(),
                  ),
                ),
              ),
              Text(
                '${getDataFiltered(data, filter).length.toString()} Order',
                style: TextStyle(
                  color: white,
                  fontSize: Adaptive.px(12),
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: Adaptive.px(12)),
            ],
          ),
        ),
      ),
    );
  }
}
