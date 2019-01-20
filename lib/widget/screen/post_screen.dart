import 'package:flutter/material.dart';
import 'package:reddit_app_flutter/model/reddit_post.dart';
import 'package:reddit_app_flutter/util/constants.dart';
import 'package:reddit_app_flutter/widget/post_item.dart';

class PostScreen extends StatelessWidget {
  PostScreen({Key key, @required this.post}) : super(key: key);

  final RedditPost post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          subredditPrefix + post.subreddit,
        ),
      ),
      body: PostItem(
        post: post,
      ),
    );
  }
}
