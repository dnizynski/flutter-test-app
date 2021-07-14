import 'package:flutter/material.dart';
import 'package:test_app_1/HomePage/examples_grid.dart';

class HomePage extends StatefulWidget {
  static const route = '/homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: FractionallySizedBox(
              widthFactor: 0.25,
              child: Hero(
                tag: 'logoHero',
                child: Image(
                  image: AssetImage('img/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: ExamplesGrid(),
          )
        ],
      ),
    ));
  }
}
