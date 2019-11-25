import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:readit/model/model.dart';

part 'post.g.dart';

abstract class PostWrapper implements Built<PostWrapper, PostWrapperBuilder> {
  PostWrapper._();

  String get kind;
  Post get data;

  factory PostWrapper([updates(PostWrapperBuilder b)]) = _$PostWrapper;
  static Serializer<PostWrapper> get serializer => _$postWrapperSerializer;
}

abstract class Post implements Built<Post, PostBuilder> {
  Post._();

  bool get allow_live_comments;
  bool get archived;
  String get author;
  String get author_flair_type;
  bool get can_gild;
  bool get clicked;
  bool get contest_mode;
  double get created;
  double get created_utc;
  String get domain;
  JsonObject get edited; // set to false or a timestamp
  int get gilded;
  Gildings get gildings;
  bool get hidden;
  bool get hide_score;
  bool get is_meta;
  bool get is_original_content;
  bool get is_self;
  bool get is_video;
  String get link_flair_type;
  bool get locked;
  @nullable
  String get mod_reason_title;
  int get num_comments;
  int get num_crossposts;
  bool get over_18;
  String get permalink;
  bool get pinned;
  @nullable
  String get post_hint;
  bool get quarantine;
  bool get saved;
  int get score;
  String get selftext;
  bool get spoiler;
  String get subreddit;
  int get subreddit_subscribers;
  String get subreddit_type;
  String get thumbnail;
  String get title;
  int get total_awards_received;
  int get ups;
  String get url;
  bool get visited;
  int get wls;

  factory Post([updates(PostBuilder b)]) = _$Post;
  static Serializer<Post> get serializer => _$postSerializer;
}
