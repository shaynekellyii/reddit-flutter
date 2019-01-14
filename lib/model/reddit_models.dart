class RedditResponse {
  final RedditData data;

  RedditResponse({this.data});

  factory RedditResponse.fromJson(Map<String, dynamic> json) {
    return RedditResponse(data: RedditData.fromJson(json['data']));
  }
}

class RedditData {
  final List<RedditChildData> children;

  RedditData({this.children});

  factory RedditData.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonList = json['children'];
    List<RedditChildData> parsedChildData =
        jsonList.map((json) => RedditChildData.fromJson(json)).toList();
    return RedditData(children: parsedChildData);
  }
}

class RedditChildData {
  final RedditPost post;

  RedditChildData({this.post});

  factory RedditChildData.fromJson(Map<String, dynamic> json) {
    return RedditChildData(post: RedditPost.fromJson(json['data']));
  }
}

class RedditPost {
  final String subreddit;
  final String selftext;
  final String title;
  final String url;
  final String author;

  RedditPost(
      {this.subreddit, this.selftext, this.title, this.url, this.author});

  factory RedditPost.fromJson(Map<String, dynamic> json) {
    return RedditPost(
      subreddit: json['subreddit'],
      selftext: json['selftext'],
      title: json['title'],
      url: json['url'],
      author: json['author'],
    );
  }
}
