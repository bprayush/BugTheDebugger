import 'package:bug_the_debugger/src/assets/enums_and_constants/routes.dart';
import 'package:bug_the_debugger/src/pages/aboutpage/about_page.dart';
import 'package:bug_the_debugger/src/pages/coming_soon/coming_soon.dart';
import 'package:bug_the_debugger/src/pages/homepage/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'dart:html' as html;

import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    html.window.history.pushState(null, settings.name, '#' + settings.name);
    switch (settings.name) {
      case AppRoutes.HOMEPAGE:
        return MaterialPageRoute(builder: (_) => HomePage());
      case AppRoutes.ABOUT:
        return MaterialPageRoute(builder: (_) => AboutPage());
      case AppRoutes.COMING_SOON:
        return MaterialPageRoute(builder: (_) => ComingSoon());
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
