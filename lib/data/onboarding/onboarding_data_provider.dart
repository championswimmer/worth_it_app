import 'package:shared_preferences/shared_preferences.dart';

class OnboardingDataProvider {
  late SharedPreferences _prefs;

  Future<String> getOnBoardingData() async {
    _prefs = await SharedPreferences.getInstance();
    String? saved = await _prefs.getString("XXX");
    if (saved == null) saved = "";
    return Future.value(saved);
  }
}
