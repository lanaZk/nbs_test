import 'package:flutter/material.dart';
import 'package:nbs_test/core/general_export.dart';
import 'package:nbs_test/features/revenues/data/revenue_model/revenue_model.dart';
import 'package:nbs_test/features/revenues/presentation/widgets/revenue_item.dart';

class RevenueList extends StatelessWidget {
  final List<RevenueModel> data;

  const RevenueList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Adaptive.px(25)),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_, i) {
            return RevenueItem(data: data[i]);
          },
          separatorBuilder: (_, i) {
            return SizedBox(height: Adaptive.px(8));
          },
          itemCount: data.length,
        ),
      ),
    );
  }
}
