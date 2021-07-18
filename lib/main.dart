import 'package:flutter/material.dart';
import 'package:test_app_1/HomePage/home_page.dart';
import 'package:test_app_1/InfiniteScrollPage/infinite_scroll.dart';
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
          initialRoute: IntroPage.route,
          home: IntroPage(),
          routes: {
            IntroPage.route: (context) => IntroPage(),
            HomePage.route: (context) => HomePage(),
            InfiniteScrollPage.route: (context) => InfiniteScrollPage()
          },
        ));
  }
}
