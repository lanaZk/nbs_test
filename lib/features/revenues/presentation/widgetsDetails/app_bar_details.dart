import 'package:flutter/material.dart';
import 'package:nbs_test/core/general_export.dart';
import 'package:nbs_test/features/revenues/data/utils.dart';

class AppBarDetails extends StatelessWidget {
  final FilterRevenue filterType;

  const AppBarDetails({Key? key, required this.filterType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Adaptive.px(10)),
      margin: EdgeInsets.symmetric(horizontal: Adaptive.px(24)),
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(Adaptive.px(4)),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              context.router.pop(true);
            },
            child: const Icon(
              Icons.arrow_back,
              color: white,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                getFilterName(filterType),
                style: const TextStyle().titleText().copyWith(color: white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
