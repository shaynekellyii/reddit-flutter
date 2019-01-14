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
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(_title),
          ),
          body: PostList(),
        ));
  }
}
