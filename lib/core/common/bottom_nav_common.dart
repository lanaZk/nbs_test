import 'package:flutter/material.dart';

import '../general_export.dart';

class CommonBottomNav extends StatelessWidget {
  final Widget child;
  final BottomIndex bottomIndex;

  const CommonBottomNav({
    Key? key,
    required this.child,
    required this.bottomIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: semiGrey,
          body: Stack(
            children: [
              child,
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: Adaptive.px(23)),
                  decoration: BoxDecoration(
                      color: white.withOpacity(0.8),
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(Adaptive.px(48)),
                        topStart: Radius.circular(Adaptive.px(48)),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: lightGrey.withOpacity(0.16),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        child: SvgPicture.asset(
                          Assets.icons.user,
                          color: bottomIndex == BottomIndex.user ? green : null,
                        ),
                      ),
                      Expanded(
                        child: SvgPicture.asset(
                          Assets.icons.car,
                          color: bottomIndex == BottomIndex.car ? green : null,
                        ),
                      ),
                      Expanded(
                        child: SvgPicture.asset(
                          Assets.icons.store,
                          color:
                              bottomIndex == BottomIndex.store ? green : null,
                        ),
                      ),
                      Expanded(
                        child: SvgPicture.asset(
                          Assets.icons.wallet,
                          color:
                              bottomIndex == BottomIndex.wallet ? green : null,
                        ),
                      ),
                      Expanded(
                        child: SvgPicture.asset(
                          Assets.icons.restaurant,
                          color: bottomIndex == BottomIndex.restaurant
                              ? green
                              : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
