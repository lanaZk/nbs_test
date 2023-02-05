import 'package:flutter/material.dart';
import 'package:nbs_test/core/general_export.dart';
import 'package:nbs_test/features/revenues/data/revenue_model_filtered/revenue_model_filtered.dart';
import 'package:nbs_test/features/revenues/data/utils.dart';
import 'package:nbs_test/features/revenues/presentation/widgets/app_bar_revenue/filter_widget.dart';

class AppBarRevenue extends StatelessWidget {
  final RevenueModelFiltered data;

  const AppBarRevenue({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: orange,
      padding: EdgeInsetsDirectional.only(start: Adaptive.px(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: Adaptive.px(47)),
          Text(
            'Business Name',
            style: const TextStyle().titleText(),
          ),
          SizedBox(height: Adaptive.px(21)),
          SizedBox(
            height: Adaptive.px(110),
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              separatorBuilder: (_, i) {
                return SizedBox(width: Adaptive.px(15));
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (_, i) {
                return FilterWidget(
                  filter: FilterRevenue.values.elementAt(i),
                  data: data,
                );
              },
            ),
          ),
          SizedBox(height: Adaptive.px(33)),
        ],
      ),
    );
  }
}
