import 'package:bug_the_debugger/src/assets/enums_and_constants/gamestate.dart';
import 'package:bug_the_debugger/src/data/model/game_data_models/base_game_data_model.dart';

abstract class LevelModel extends BaseGameDataModel {
  String title;
  List<String> question;
  List<String> answer;
  List<bool> answerState;
  Map<GameState, String> result;
  List<Map<String, dynamic>> dataMap;
  String output;

  void updateValue(int index);

  void run() {
    int answeredCount = 0;
    answerState.forEach((f) {
      if (f) answeredCount++;
    });
    if (answeredCount == answerState.length) {
      updateOutput(result[GameState.Success]);
      success();
    } else if (answeredCount == 0) {
      updateOutput(result[GameState.Execute]);
      execute();
    } else {
      updateOutput(result[GameState.Error]);
      error();
    }
  }

  void updateOutput(String output) {
    this.output = output;
  }
}
