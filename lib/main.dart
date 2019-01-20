import 'package:flutter/material.dart';
import 'package:reddit_app_flutter/widget/post_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _title = 'Reddit';

    return MaterialApp(
        title: _title,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.blueGrey,
          accentColor: Colors.cyan[600],
          fontFamily: 'Montserrat',
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(_title),
          ),
          body: PostList(),
        ));
  }
}
