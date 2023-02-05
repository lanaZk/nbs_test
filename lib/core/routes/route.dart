import 'package:nbs_test/core/general_export.dart';
import 'package:nbs_test/features/revenues/presentation/revenue_page.dart';

import '../../features/revenues/presentation/revenue_details_page.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      path: "/",
      page: RevenuePage,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      path: "/revenueDetailsView",
      name: 'RevenueDetailsPageRoute',
      page: RevenueDetailsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class $AppRouter {}
