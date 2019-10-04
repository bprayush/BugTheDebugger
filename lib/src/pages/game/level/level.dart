import 'package:bug_the_debugger/service_locator.dart';
import 'package:bug_the_debugger/src/data/model/game_data_models/level1_model.dart/level1_model.dart';
import 'package:bug_the_debugger/src/data/model/game_data_models/level_model.dart';
import 'package:bug_the_debugger/src/pages/game/game_scaffold.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Levels extends StatefulWidget {
  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LevelModel>(
      builder: (context) => locator<Level1Model>(),
      child: Consumer<LevelModel>(
        builder: (_, levelModel, __) => GameScaffold(
          onPressed: () => levelModel.run(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '${levelModel.title}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: [
                    for (int i = 0; i < levelModel.dataMap.length; i++) ...[
                      if (!levelModel.dataMap[i]["onTap"])
                        TextSpan(
                          text: '${levelModel.dataMap[i]["value"]}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      else
                        TextSpan(
                          text: '${levelModel.dataMap[i]["value"]}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              levelModel
                                  .updateValue(levelModel.dataMap[i]["index"]);
                            },
                        ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
