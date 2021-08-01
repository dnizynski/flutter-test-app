import 'package:flutter/cupertino.dart';

class CurrentUser extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void logIn() {
    _isLoggedIn = true;
    notifyListeners();
  }
}
