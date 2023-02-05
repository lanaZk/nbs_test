import 'package:flutter/material.dart';
import 'core/general_export.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final SharedFunction sharedFunction = SharedFunction();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter(navigatorKey);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
      );
    });
  }
}
