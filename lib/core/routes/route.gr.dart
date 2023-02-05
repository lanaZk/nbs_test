// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/revenues/data/revenue_model_filtered/revenue_model_filtered.dart'
    as _i7;
import '../../features/revenues/data/utils.dart' as _i6;
import '../../features/revenues/presentation/revenue_details_page.dart' as _i2;
import '../../features/revenues/presentation/revenue_page.dart' as _i1;
import '../general_export.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RevenueRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.RevenuePage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RevenueDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<RevenueDetailsPageRouteArgs>();
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.RevenueDetailsPage(
          key: args.key,
          filterType: args.filterType,
          data: args.data,
        ),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          RevenueRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          RevenueDetailsPageRoute.name,
          path: '/revenueDetailsView',
        ),
      ];
}

/// generated route for
/// [_i1.RevenuePage]
class RevenueRoute extends _i3.PageRouteInfo<void> {
  const RevenueRoute()
      : super(
          RevenueRoute.name,
          path: '/',
        );

  static const String name = 'RevenueRoute';
}

/// generated route for
/// [_i2.RevenueDetailsPage]
class RevenueDetailsPageRoute
    extends _i3.PageRouteInfo<RevenueDetailsPageRouteArgs> {
  RevenueDetailsPageRoute({
    _i4.Key? key,
    required _i6.FilterRevenue filterType,
    required _i7.RevenueModelFiltered data,
  }) : super(
          RevenueDetailsPageRoute.name,
          path: '/revenueDetailsView',
          args: RevenueDetailsPageRouteArgs(
            key: key,
            filterType: filterType,
            data: data,
          ),
        );

  static const String name = 'RevenueDetailsPageRoute';
}

class RevenueDetailsPageRouteArgs {
  const RevenueDetailsPageRouteArgs({
    this.key,
    required this.filterType,
    required this.data,
  });

  final _i4.Key? key;

  final _i6.FilterRevenue filterType;

  final _i7.RevenueModelFiltered data;

  @override
  String toString() {
    return 'RevenueDetailsPageRouteArgs{key: $key, filterType: $filterType, data: $data}';
  }
}
