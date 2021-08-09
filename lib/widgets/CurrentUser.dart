import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CurrentUser extends ChangeNotifier {
  bool _isLoggedIn = false;
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  bool get isLoggedIn => _isLoggedIn;

  void logIn() async {
    final SharedPreferences prefs = await _prefs;

    prefs.setBool('isLoggedIn', true);
    _isLoggedIn = true;
    notifyListeners();
  }

  void logOut() async {
    final SharedPreferences prefs = await _prefs;

    prefs.setBool('isLoggedIn', false);
    _isLoggedIn = false;
    notifyListeners();
  }
}
