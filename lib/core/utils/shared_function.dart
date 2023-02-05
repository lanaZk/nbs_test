import 'package:shared_preferences/shared_preferences.dart';
import '../general_export.dart';
import '../../main.dart';

logoutConfirmed() async {
  // sharedFunction.removeShared(PrefKeys.userTypeLogin);
  // sharedFunction.removeShared(PrefKeys.tokenLoggedIn);
  // sharedFunction.removeShared(PrefKeys.userIdLogin);
  // AutoRouter.of(navigatorKey.currentContext!).replaceAll([const HomeRoute()]);
}

Future<String> getToken() async {
  // return await sharedFunction.getShared(PrefKeys.tokenLoggedIn) ?? "";
  return "";
}

getIsEn() {
  // return (LocaleKeys.langNow).tr() == "en";
}

class SharedFunction {
  getShared(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }

  getSharedBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  setShared(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  setSharedPermission(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  removeShared(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}
