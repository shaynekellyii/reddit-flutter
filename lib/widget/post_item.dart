import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reddit_app_flutter/model/post_type.dart';
import 'package:reddit_app_flutter/model/reddit_post.dart';
import 'package:reddit_app_flutter/util/constants.dart';
import 'package:reddit_app_flutter/util/extensions.dart';
import 'package:reddit_app_flutter/widget/base/text_with_icon.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PostItem extends StatelessWidget {
  PostItem({Key key, @required this.post}) : super(key: key);

  final RedditPost post;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Text(
              post.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          SelfText(
            post: post,
          ),
          _getImage(post),
          LinkInfo(
            post: post,
          ),
          PostMetadata(
            post: post,
          ),
        ],
      ),
      padding: EdgeInsets.only(
        bottom: 16.0,
        top: 16.0,
      ),
    );
  }

  Widget _getImage(RedditPost post) {
    return post.getPostType() == PostType.IMAGE &&
            post.url != null &&
            post.url.isNotEmpty
        ? Container(
            padding: EdgeInsets.only(bottom: 16.0),
            child: CachedNetworkImage(
              imageUrl: post.url,
              placeholder: Container(
                alignment: Alignment(0.0, 0.0),
                child: CircularProgressIndicator(),
              ),
              width: double.infinity,
              height: 160.0,
              fit: BoxFit.fitWidth,
            ),
          )
        : Container(
            width: 0.0,
            height: 0.0,
          );
  }
}

class PostMetadata extends StatelessWidget {
  PostMetadata({Key key, @required this.post}) : super(key: key);

  final RedditPost post;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(
        -1.0,
        0.0,
      ),
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 4.0),
            child: Row(
              children: <Widget>[
                Text(
                  subredditPrefix + post.subreddit,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              TextWithIcon(
                icon: Icons.arrow_upward,
                text: Extensions.formatNumberShort(post.score.toDouble()),
                size: 12.0,
                paddingRight: 4.0,
              ),
              TextWithIcon(
                icon: Icons.mode_comment,
                text: Extensions.formatNumberShort(post.numComments.toDouble()),
                size: 12.0,
                paddingRight: 4.0,
              ),
              TextWithIcon(
                icon: Icons.access_time,
                text: Extensions.formatTimestamp(
                    post.createdUtc.floor() * Duration.millisecondsPerSecond),
                size: 12.0,
                paddingRight: 4.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SelfText extends StatelessWidget {
  SelfText({Key key, @required this.post}) : super(key: key);

  final RedditPost post;

  @override
  Widget build(BuildContext context) {
    if (post.getPostType() == PostType.SELF && post.selftext.isNotEmpty) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: 16.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Column(
          children: <Widget>[
            Text(
              post.selftext,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: 0.0,
        height: 0.0,
      );
    }
  }
}

class LinkInfo extends StatelessWidget {
  LinkInfo({Key key, @required this.post}) : super(key: key);

  final RedditPost post;

  @override
  Widget build(BuildContext context) {
    if (post.getPostType() == PostType.LINK) {
      final image = post.thumbnail != null && post.thumbnail.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: post.thumbnail,
              placeholder: Container(
                alignment: Alignment(
                  0.0,
                  0.0,
                ),
                height: 80.0,
                width: 80.0,
                child: Icon(Icons.image),
              ),
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            )
          : Container(
              alignment: Alignment(
                0.0,
                0.0,
              ),
              height: 80.0,
              width: 80.0,
              child: Icon(Icons.image),
            );

      return Container(
        color: Colors.grey[200],
        margin: EdgeInsets.only(
          bottom: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            image,
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: Text(
                  post.url,
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: 0.0,
        height: 0.0,
      );
    }
  }
}
