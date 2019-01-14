import 'package:flutter/widgets.dart';
import 'package:reddit_app_flutter/model/reddit_models.dart';

class PostItem extends StatelessWidget {
  PostItem({Key key, @required this.post}) : super(key: key);

  final RedditPost post;

  @override
  Widget build(BuildContext context) {
    return new Container (
      child: new Column(
        children: [
          new Text(post.title),
          new Text(post.author),
          new Text(post.subreddit)
        ],
      ),
    );
  }
}
