import 'package:flutter/material.dart';
import 'package:nbs_test/core/general_export.dart';
import 'package:shimmer_pro/shimmer_pro.dart';

class RevenueLoading extends StatelessWidget {
  const RevenueLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarShimmer(),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (_, i) {
              return _shimmer();
            },
          ),
        ),
      ],
    );
  }

  Widget _shimmer() {
    return ShimmerPro.generated(
      scaffoldBackgroundColor: Theme.of(navigatorKey.currentContext!).cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ShimmerPro.text(
            scaffoldBackgroundColor:
                Theme.of(navigatorKey.currentContext!).cardColor,
            maxLine: 2,
            alignment: Alignment.centerLeft,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShimmerPro.sized(
                height: Adaptive.px(50),
                width: Adaptive.px(50),
                scaffoldBackgroundColor:
                    Theme.of(navigatorKey.currentContext!).cardColor,
              ),
              ShimmerPro.sized(
                height: Adaptive.px(50),
                width: Adaptive.px(50),
                scaffoldBackgroundColor:
                    Theme.of(navigatorKey.currentContext!).cardColor,
              ),
              ShimmerPro.sized(
                height: Adaptive.px(50),
                width: Adaptive.px(50),
                scaffoldBackgroundColor:
                    Theme.of(navigatorKey.currentContext!).cardColor,
              ),
              ShimmerPro.sized(
                height: Adaptive.px(50),
                width: Adaptive.px(50),
                scaffoldBackgroundColor:
                Theme.of(navigatorKey.currentContext!).cardColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AppBarShimmer extends StatelessWidget {
  const AppBarShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShimmerPro.generated(
      scaffoldBackgroundColor: Theme.of(navigatorKey.currentContext!).cardColor,
      alignment: Alignment.centerLeft,
      height: Adaptive.px(200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ShimmerPro.text(
            scaffoldBackgroundColor:
                Theme.of(navigatorKey.currentContext!).cardColor,
            maxLine: 1,
            width: MediaQuery.of(navigatorKey.currentContext!).size.width / 2.5,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: Adaptive.px(150),
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (_, i) {
                return ShimmerPro.sized(
                  scaffoldBackgroundColor:
                      Theme.of(navigatorKey.currentContext!).cardColor,
                  height: Adaptive.px(100),
                  width: Adaptive.px(120),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
