import 'package:bug_the_debugger/src/assets/enums_and_constants/viewstate.dart';
import 'package:flutter/widgets.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
