import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit_app_flutter/model/reddit_post.dart';
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
          return ListView.separated(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Container(
                  child: PostItem(
                    post: snapshot.data[index],
                  ),
                ),
                onTap: () => Navigator.pushNamed(context, '/post'),
              );
            },
            separatorBuilder: (context, index) => Divider(
                  color: Colors.grey,
                  height: 0.0,
                ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return Container(
          alignment: Alignment(
            0.0,
            0.0,
          ),
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
