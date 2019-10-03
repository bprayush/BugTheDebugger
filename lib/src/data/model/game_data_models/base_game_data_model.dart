import 'package:bug_the_debugger/src/assets/enums_and_constants/gamestate.dart';
import 'package:flutter/foundation.dart';

class BaseGameDataModel extends ChangeNotifier {
  GameState _gameState = GameState.InProgress;

  GameState get gameState => _gameState;

  void setState(GameState gameState) {
    _gameState = gameState;
    notifyListeners();
  }

  void error() {
    setState(GameState.Error);
  }

  void init() {
    setState(GameState.InProgress);
  }

  void success() {
    setState(GameState.Success);
  }

  void execute() {
    setState(GameState.Execute);
  }
}
