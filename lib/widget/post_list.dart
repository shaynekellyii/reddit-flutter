import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit_app_flutter/model/reddit_models.dart';
import 'package:http/http.dart' as http;
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
    _posts = fetchPosts();
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
