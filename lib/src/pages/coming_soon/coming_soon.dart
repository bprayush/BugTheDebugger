import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffC33764),
              Color(0xff1D2671),
            ],
          ),
        ),
        child: Center(
          child: TypewriterAnimatedTextKit(
            duration: Duration(seconds: 8),
            text: [
              'What if you bug the debugger?',
              'BugTheDebugger',
              'Coming Soon.'
            ],
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional.center,
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
