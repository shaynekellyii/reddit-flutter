import 'dart:convert';

import 'package:reddit_app_flutter/model/reddit_post.dart';
import 'package:http/http.dart' as http;

class RedditApi {
  static Future<List<RedditPost>> fetchPosts() async {
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
