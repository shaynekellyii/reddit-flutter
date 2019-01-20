import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reddit_app_flutter/model/reddit_models.dart';
import 'package:reddit_app_flutter/util/constants.dart';

class PostItem extends StatelessWidget {
  PostItem({Key key, @required this.post}) : super(key: key);

  final RedditPost post;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text(
              post.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          Text(
            subredditPrefix + post.subreddit,
            textAlign: TextAlign.left,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.0),
    );
  }
}
