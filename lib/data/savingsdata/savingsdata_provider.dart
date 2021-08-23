import 'package:shared_preferences/shared_preferences.dart';

class SavingsDataProvider {
  SharedPreferences? _prefs;

  Future<SharedPreferences> get prefs async {
    if (_prefs == null) {
      _prefs = await SharedPreferences.getInstance();
    }
    return _prefs!;
  }

  Future<int> getMonthlyEarnings() async {
    return (await prefs).getInt("monthly_earnings") ?? -1;
  }
}
