import 'package:flutter/material.dart';
import 'package:reddit_app_flutter/widget/post_list.dart';

class SubredditScreen extends StatelessWidget {
  SubredditScreen({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: PostList(),
    );
  }
}
