import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app_1/HomePage/home_page.dart';
import 'package:test_app_1/InfiniteScrollPage/infinite_scroll.dart';
import 'package:test_app_1/constants/theme.dart';
import 'package:test_app_1/widgets/CurrentUser.dart';
import 'package:test_app_1/widgets/conditional_router.dart';
import 'IntroPage/intro_page.dart';

void main() {
  runApp(AppWrapper());
}

class AppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CurrentUser(),
        child: MediaQuery(
            data: new MediaQueryData(),
            child: new MaterialApp(
                themeMode: ThemeMode.dark,
                theme: appTheme,
                title: 'Pagepro Flutter App',
                home: IntroPage(),
                routes: ConditionalRouter(isLoggedIn: true, public: {
                  IntroPage.route: (context) => IntroPage(),
                }, private: {
                  HomePage.route: (context) => HomePage(),
                  InfiniteScrollPage.route: (context) => InfiniteScrollPage()
                }))));
  }
}
