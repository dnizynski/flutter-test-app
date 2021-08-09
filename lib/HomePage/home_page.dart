import 'package:flutter/material.dart';
import 'package:test_app_1/HomePage/examples_grid.dart';
import 'package:provider/provider.dart';
import 'package:test_app_1/IntroPage/intro_page.dart';
import 'package:test_app_1/widgets/CurrentUser.dart';

class HomePage extends StatefulWidget {
  static const route = '/homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void logout() {
    context.read<CurrentUser>().logOut();
    Navigator.pushReplacementNamed(context, IntroPage.route);
  }

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
          ),
          ElevatedButton(
            child: Text('Log out'),
            onPressed: logout,
          )
        ],
      ),
    ));
  }
}
