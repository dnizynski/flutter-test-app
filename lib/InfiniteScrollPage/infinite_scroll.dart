import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_app_1/InfiniteScrollPage/photo.dart';

class InfiniteScrollPage extends StatefulWidget {
  static const route = '/infiniteScrollPage';

  @override
  _InfiniteScrollPageState createState() => _InfiniteScrollPageState();
}

class _InfiniteScrollPageState extends State<InfiniteScrollPage> {
  Future<List<Photo>> photoList;

  @override
  void initState() {
    super.initState();
    photoList = fetchPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: FutureBuilder(
          future: photoList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: <Widget>[
                  for (Photo photo in snapshot.data)
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Image.network(photo.thumbnailUrl),
                          Flexible(
                              child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(photo.title),
                          ))
                        ],
                      ),
                    )
                ],
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    ));
  }
}

Future<List<Photo>> fetchPhotos() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  if (response.statusCode == 200) {
    List jsonList = json.decode(response.body);

    return jsonList.map((element) => new Photo.fromJson(element)).toList();
  } else {
    throw Exception('Could not load photos');
  }
}
