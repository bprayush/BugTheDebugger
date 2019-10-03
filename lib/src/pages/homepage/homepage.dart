import 'package:bug_the_debugger/src/assets/enums_and_constants/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil(AppRoutes.ABOUT, (_) => false);
          },
          child: Text('Ok'),
        ),
      ),
    );
  }
}
