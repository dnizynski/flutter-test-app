import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_1/HomePage/ExampleElement.dart';
import 'package:test_app_1/HomePage/ExampleListItem.dart';
import 'package:test_app_1/InfiniteScrollPage/infinite_scroll.dart';
import 'package:test_app_1/TapPage/tap_page.dart';

class ExamplesGrid extends StatelessWidget {
  final elements = [
    ExampleElement(text: 'Infinite scroll', route: InfiniteScrollPage.route),
    ExampleElement(text: 'Tap page', route: TapPage.route)
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(vertical: 25),
      crossAxisCount: 2,
      children: [
        for (var item in elements)
          ExampleListItem(
            itemText: item.text,
            route: item.route,
          )
      ],
    );
  }
}
