import 'package:flutter/material.dart';
import 'package:test_app_1/constants/routing.dart';
import 'package:test_app_1/constants/theme.dart';
import 'IntroPage/intro_page.dart';

void main() {
  runApp(AppWrapper());
}

class AppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(
            themeMode: ThemeMode.dark,
            theme: appTheme,
            title: 'Pagepro Flutter App',
            home: IntroPage(),
            onGenerateRoute: onGenerateRoute));
  }
}
