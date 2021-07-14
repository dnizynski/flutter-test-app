import 'package:flutter/material.dart';
import 'package:test_app_1/HomePage/home_page.dart';

class IntroPage extends StatefulWidget {
  static const route = '/introPage';

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
              child: Hero(
            tag: 'logoHero',
            child: Image(
              image: AssetImage('img/logo.png'),
            ),
          )),
          Text('Flutter Test App'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, HomePage.route);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
