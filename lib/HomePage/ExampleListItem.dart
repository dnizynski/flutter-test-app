import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleListItem extends StatelessWidget {
  final String itemText;
  final String route;

  ExampleListItem({@required this.itemText, @required this.route});

  @override
  Widget build(BuildContext context) {
    return (Column(children: [
      Container(
        color: Colors.amber,
        width: 125,
        height: 125,
      ),
      ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, route),
          child: Text(itemText))
    ]));
  }
}
