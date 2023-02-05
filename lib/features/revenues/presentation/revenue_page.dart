import 'package:flutter/material.dart';
import 'package:nbs_test/core/common/bottom_nav_common.dart';
import 'package:nbs_test/core/general_export.dart';
import 'package:nbs_test/features/revenues/bloc/revenue_bloc.dart';
import 'package:nbs_test/features/revenues/data/revenue_model/revenue_model.dart';
import 'package:nbs_test/features/revenues/data/revenue_model_filtered/revenue_model_filtered.dart';
import 'package:nbs_test/features/revenues/data/revenue_repo.dart';
import 'package:nbs_test/features/revenues/presentation/widgets/revenue_item.dart';
import 'package:nbs_test/features/revenues/presentation/widgets/revenue_list.dart';
import 'package:nbs_test/features/revenues/presentation/widgets/revenue_loading.dart';

import 'widgets/app_bar_revenue/app_bar_revenue.dart';

class RevenuePage extends StatelessWidget {
  const RevenuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RevenueBloc>(
      create: (BuildContext context) =>
          RevenueBloc(RevenueRepo())..add(GetAllRevenue()),
      child: const RevenueView(),
    );
  }
}

class RevenueView extends StatefulWidget {
  const RevenueView({Key? key}) : super(key: key);

  @override
  State<RevenueView> createState() => _RevenueViewState();
}

class _RevenueViewState extends State<RevenueView> {
  @override
  Widget build(BuildContext context) {
    return CommonBottomNav(
      bottomIndex: BottomIndex.wallet,
      child: BlocConsumer<RevenueBloc, RevenueState>(
        listener: (_, state) {
          if (state is Failure) {
            showToast(msg: state.message, isError: true);
          }
        },
        builder: (_, state) {
          if (state is Loading) {
            return const RevenueLoading();
          }
          if (state is RevenueLoaded) {
            return buildWidget(state.data);
          }
          return const RevenueLoading();
          //return buildWidget();
        },
      ),
    );
  }

  Widget buildWidget(RevenueModelFiltered data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppBarRevenue(data: data),
        SizedBox(height: Adaptive.px(13)),
        RevenueList(data: data.listOrders ?? []),
        SizedBox(height: Adaptive.px(40)),
      ],
    );
  }
}
