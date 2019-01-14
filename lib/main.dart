import 'package:flutter/material.dart';

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
          body: _PostList(),
        ));
  }
}

class _PostList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PostListState();
}

class _PostListState extends State<_PostList> {
//  final _posts = <String>[];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[Text('1'), Text('2'), Text('3')],
    );
  }

  void loadPosts() {}
}
