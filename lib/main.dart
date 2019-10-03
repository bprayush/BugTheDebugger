import 'package:bug_the_debugger/service_locator.dart';
import 'package:bug_the_debugger/src/assets/enums_and_constants/routes.dart';
import 'package:bug_the_debugger/src/services/routes/route.dart';
import 'package:flutter/material.dart';

void main() async {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BugTheDebugger',
      initialRoute: AppRoutes.COMING_SOON,
      onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
      theme: ThemeData(
        fontFamily: 'Mansalva',
      ),
    );
  }
}
