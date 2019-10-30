import 'package:bug_the_debugger/src/assets/enums_and_constants/gamestate.dart';
import 'package:bug_the_debugger/src/data/model/game_data_models/level_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GameScaffold extends StatefulWidget {
  final Function onPressed;
  final Widget child;

  const GameScaffold({
    Key key,
    this.onPressed,
    @required this.child,
  }) : super(key: key);

  @override
  _GameScaffoldState createState() => _GameScaffoldState();
}

class _GameScaffoldState extends State<GameScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 800),
          curve: Curves.easeIn,
          width: MediaQuery.of(context).size.width * 0.80,
          height: MediaQuery.of(context).size.height * 0.80,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: widget.child,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  if (Provider.of<LevelModel>(context).gameState ==
                      GameState.InProgress) ...[
                    Text(
                      '>_',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ] else ...[
                    Text(
                      '>${Provider.of<LevelModel>(context).output}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                  Spacer(),
                  OutlineButton(
                    onPressed: widget.onPressed,
                    borderSide: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                    textColor: Colors.white,
                    child: Text(
                      'Run',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
