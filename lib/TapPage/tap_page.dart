import 'package:flutter/material.dart';

class TapPage extends StatefulWidget {
  static const route = '/tapPage';

  @override
  _TapPageState createState() => _TapPageState();
}

class _TapPageState extends State<TapPage> {
  int taps = 0;

  void _onTap() {
    setState(() {
      taps++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Taps: "), Text(taps.toString())],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: _onTap, child: Text('Tap me!'))
        ]),
      ),
    ));
  }
}
