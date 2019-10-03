import 'package:bug_the_debugger/src/assets/enums_and_constants/gamestate.dart';
import 'package:bug_the_debugger/src/data/model/game_data_models/base_game_data_model.dart';

abstract class LevelModel extends BaseGameDataModel {
  String title;
  List<String> question;
  List<String> answer;
  List<bool> answerState;
  Map<GameState, String> result;
  List<Map<String, dynamic>> dataMap;
  void updateValue(int index);
  String run();
}
