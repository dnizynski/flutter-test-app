import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test_app_1/HomePage/home_page.dart';
import 'package:test_app_1/InfiniteScrollPage/infinite_scroll.dart';
import 'package:test_app_1/IntroPage/intro_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case IntroPage.route:
      return PageTransition(
          child: IntroPage(), type: PageTransitionType.leftToRight);

    case HomePage.route:
      return PageTransition(
        child: HomePage(),
        type: PageTransitionType.fade,
      );

    case InfiniteScrollPage.route:
      return PageTransition(
          child: InfiniteScrollPage(), type: PageTransitionType.leftToRight);
    default:
      return null;
  }
}
