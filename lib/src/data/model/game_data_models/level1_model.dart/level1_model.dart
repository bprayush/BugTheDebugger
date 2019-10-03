import 'package:bug_the_debugger/src/assets/enums_and_constants/gamestate.dart';
import 'package:bug_the_debugger/src/data/model/game_data_models/level_model.dart';

class Level1Model extends LevelModel {
  @override
  String title = 'Change one thing that bugs the debuggers the most.';
  @override
  List<String> question = [';'];
  @override
  List<String> answer = [''];
  @override
  List<bool> answerState = [false];
  @override
  Map<GameState, String> result = {
    GameState.Error: 'Not quite there yet.',
    GameState.Success: 'Yep. You\'re good',
    GameState.Execute: 'Hello, World!',
  };
  List<Map<String, dynamic>> dataMap;

  Level1Model() {
    dataMap = [
      {
        'onTap': false,
        'value': 'void main() {\n',
      },
      {
        'onTap': false,
        'value': '\tprint(\'Hello, World!\')',
      },
      {
        'onTap': true,
        'value': answerState[0] ? answer[0] : question[0],
        'index': 0,
      },
      {
        'onTap': false,
        'value': '\n}\n',
      },
    ];
  }

  @override
  void updateValue(int index) {
    answerState[index] = true;

    dataMap = [
      {
        'onTap': false,
        'value': 'void main() {\n',
      },
      {
        'onTap': false,
        'value': '\tprint(\'Hello, World!\')',
      },
      {
        'onTap': true,
        'value': answerState[0] ? answer[0] : question[0],
        'index': 0,
      },
      {
        'onTap': false,
        'value': '\n}\n',
      },
    ];
  }

  @override
  String run() {
    int answeredCount = 0;
    answerState.forEach((f) {
      if (f) answeredCount++;
    });
    if (answeredCount == answerState.length)
      success();
    else if (answeredCount == 0)
      execute();
    else
      error();
    return result[gameState];
  }
}
