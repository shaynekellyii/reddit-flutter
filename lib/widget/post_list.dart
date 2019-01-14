import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit_app_flutter/model/reddit_models.dart';
import 'package:reddit_app_flutter/network/reddit_api.dart';
import 'package:reddit_app_flutter/widget/post_item.dart';

class PostList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PostListState();
}

class PostListState extends State<PostList> {
  Future _posts;

  @override
  void initState() {
    super.initState();
    _posts = RedditApi.fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<RedditPost>>(
      future: _posts,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children:
                snapshot.data.map((data) => PostItem(post: data)).toList(),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}
