import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bug_the_debugger/src/assets/enums_and_constants/routes.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (location) {
        Navigator.of(context).pushNamedAndRemoveUntil(
            GameRoutes.LEVEL_ONE, (predicate) => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: TypewriterAnimatedTextKit(
            duration: Duration(seconds: 8),
            text: [
              'What if you bug the debugger?',
              'BugTheDebugger',
              'Coming Soon...'
            ],
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional.topStart,
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
