import 'package:bug_the_debugger/src/data/model/title_model/title.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() async {
  locator.registerSingleton(PageTitle());
}
