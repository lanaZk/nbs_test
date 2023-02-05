import 'package:flutter/material.dart';
import 'package:nbs_test/features/revenues/data/revenue_model/revenue_model.dart';

import '../../../../core/general_export.dart';

class RevenueItem extends StatefulWidget {
  final RevenueModel data;
  const RevenueItem({Key? key, required this.data}) : super(key: key);

  @override
  State<RevenueItem> createState() => _RevenueItemState();
}

class _RevenueItemState extends State<RevenueItem> {
  final EdgeInsets padding = EdgeInsets.symmetric(horizontal: Adaptive.px(13));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(Adaptive.px(10)),
        border: Border.all(color: green),
      ),
      margin: EdgeInsets.only(top: Adaptive.px(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: Adaptive.px(13)),
          Container(
            padding: padding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.data.orderNo ?? "",
                  style: const TextStyle().titleText(),
                ),
                Text(
                  '${widget.data.orderItemsCount} items',
                  style: const TextStyle()
                      .titleText()
                      .copyWith(color: green),
                ),
              ],
            ),
          ),
          SizedBox(height: Adaptive.px(18)),
          Container(
            padding: padding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.data.orderDateTime ?? "",
                  style: const TextStyle().detailsText(),
                ),
                const Spacer(),
                Text(
                  "Sold",
                  style: const TextStyle().detailsText(),
                ),
                SizedBox(width: Adaptive.px(13)),
                Text(
                  widget.data.orderSold.toString(),
                  style: const TextStyle()
                      .titleText()
                      .copyWith(color: green),
                ),
              ],
            ),
          ),
          SizedBox(height: Adaptive.px(13)),
          const Divider(color: green),
          SizedBox(height: Adaptive.px(17)),
          Container(
            padding: padding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Driver',
                    style: const TextStyle().detailsText(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Food',
                    style: const TextStyle().detailsText(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Commission',
                    style: const TextStyle().detailsText(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Net Profit',
                    style: const TextStyle().detailsText(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Adaptive.px(8)),
          Container(
            padding: padding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.data.orderDriver.toString(),
                    style: const TextStyle().titleText(),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: Adaptive.px(20),
                  child: const VerticalDivider(color: grey),
                ),
                Expanded(
                  child: Text(
                    widget.data.orderFood.toString(),
                    style: const TextStyle()
                        .titleText()
                        .copyWith(color: red),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: Adaptive.px(20),
                  child: const VerticalDivider(color: grey),
                ),
                Expanded(
                  child: Text(
                    widget.data.orderCommission.toString(),
                    style: const TextStyle()
                        .titleText()
                        .copyWith(color: orange),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: Adaptive.px(20),
                  child: const VerticalDivider(color: grey),
                ),
                Expanded(
                  child: Text(
                    widget.data.orderNetProfit.toString(),
                    style: const TextStyle()
                        .titleText()
                        .copyWith(color: green),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Adaptive.px(21)),
        ],
      ),
    );
  }
}
