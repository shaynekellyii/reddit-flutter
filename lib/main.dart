import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:reddit_app_flutter/model/RedditResponse.dart';

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
    return FutureBuilder<List<RedditPost>>(
      future: fetchPosts(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: snapshot.data.map((data) => Text(data.title)).toList(),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    )
  }

  Future<List<RedditPost>> fetchPosts() async {
    final response = await http.get('http://reddit.com/hot.json');

    if (response.statusCode == 200) {
      RedditResponse redditResponse =
      RedditResponse.fromJson(json.decode(response.body));
      List<RedditPost> redditPosts = redditResponse.data.children
          .map((childData) => childData.post)
          .toList();
      return redditPosts;
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
