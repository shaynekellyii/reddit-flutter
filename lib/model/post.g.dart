// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostWrapper> _$postWrapperSerializer = new _$PostWrapperSerializer();
Serializer<Post> _$postSerializer = new _$PostSerializer();

class _$PostWrapperSerializer implements StructuredSerializer<PostWrapper> {
  @override
  final Iterable<Type> types = const [PostWrapper, _$PostWrapper];
  @override
  final String wireName = 'PostWrapper';

  @override
  Iterable<Object> serialize(Serializers serializers, PostWrapper object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data, specifiedType: const FullType(Post)),
    ];

    return result;
  }

  @override
  PostWrapper deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostWrapperBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(Post)) as Post);
          break;
      }
    }

    return result.build();
  }
}

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable<Object> serialize(Serializers serializers, Post object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'allow_live_comments',
      serializers.serialize(object.allow_live_comments,
          specifiedType: const FullType(bool)),
      'archived',
      serializers.serialize(object.archived,
          specifiedType: const FullType(bool)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
      'author_flair_type',
      serializers.serialize(object.author_flair_type,
          specifiedType: const FullType(String)),
      'can_gild',
      serializers.serialize(object.can_gild,
          specifiedType: const FullType(bool)),
      'clicked',
      serializers.serialize(object.clicked,
          specifiedType: const FullType(bool)),
      'contest_mode',
      serializers.serialize(object.contest_mode,
          specifiedType: const FullType(bool)),
      'created',
      serializers.serialize(object.created,
          specifiedType: const FullType(double)),
      'created_utc',
      serializers.serialize(object.created_utc,
          specifiedType: const FullType(double)),
      'domain',
      serializers.serialize(object.domain,
          specifiedType: const FullType(String)),
      'edited',
      serializers.serialize(object.edited,
          specifiedType: const FullType(JsonObject)),
      'gilded',
      serializers.serialize(object.gilded, specifiedType: const FullType(int)),
      'gildings',
      serializers.serialize(object.gildings,
          specifiedType: const FullType(Gildings)),
      'hidden',
      serializers.serialize(object.hidden, specifiedType: const FullType(bool)),
      'hide_score',
      serializers.serialize(object.hide_score,
          specifiedType: const FullType(bool)),
      'is_meta',
      serializers.serialize(object.is_meta,
          specifiedType: const FullType(bool)),
      'is_original_content',
      serializers.serialize(object.is_original_content,
          specifiedType: const FullType(bool)),
      'is_self',
      serializers.serialize(object.is_self,
          specifiedType: const FullType(bool)),
      'is_video',
      serializers.serialize(object.is_video,
          specifiedType: const FullType(bool)),
      'link_flair_type',
      serializers.serialize(object.link_flair_type,
          specifiedType: const FullType(String)),
      'locked',
      serializers.serialize(object.locked, specifiedType: const FullType(bool)),
      'num_comments',
      serializers.serialize(object.num_comments,
          specifiedType: const FullType(int)),
      'num_crossposts',
      serializers.serialize(object.num_crossposts,
          specifiedType: const FullType(int)),
      'over_18',
      serializers.serialize(object.over_18,
          specifiedType: const FullType(bool)),
      'permalink',
      serializers.serialize(object.permalink,
          specifiedType: const FullType(String)),
      'pinned',
      serializers.serialize(object.pinned, specifiedType: const FullType(bool)),
      'quarantine',
      serializers.serialize(object.quarantine,
          specifiedType: const FullType(bool)),
      'saved',
      serializers.serialize(object.saved, specifiedType: const FullType(bool)),
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'selftext',
      serializers.serialize(object.selftext,
          specifiedType: const FullType(String)),
      'spoiler',
      serializers.serialize(object.spoiler,
          specifiedType: const FullType(bool)),
      'subreddit',
      serializers.serialize(object.subreddit,
          specifiedType: const FullType(String)),
      'subreddit_subscribers',
      serializers.serialize(object.subreddit_subscribers,
          specifiedType: const FullType(int)),
      'subreddit_type',
      serializers.serialize(object.subreddit_type,
          specifiedType: const FullType(String)),
      'thumbnail',
      serializers.serialize(object.thumbnail,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'total_awards_received',
      serializers.serialize(object.total_awards_received,
          specifiedType: const FullType(int)),
      'ups',
      serializers.serialize(object.ups, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'visited',
      serializers.serialize(object.visited,
          specifiedType: const FullType(bool)),
      'wls',
      serializers.serialize(object.wls, specifiedType: const FullType(int)),
    ];
    if (object.mod_reason_title != null) {
      result
        ..add('mod_reason_title')
        ..add(serializers.serialize(object.mod_reason_title,
            specifiedType: const FullType(String)));
    }
    if (object.post_hint != null) {
      result
        ..add('post_hint')
        ..add(serializers.serialize(object.post_hint,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Post deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'allow_live_comments':
          result.allow_live_comments = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'archived':
          result.archived = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_flair_type':
          result.author_flair_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'can_gild':
          result.can_gild = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'clicked':
          result.clicked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'contest_mode':
          result.contest_mode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'created_utc':
          result.created_utc = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'domain':
          result.domain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'edited':
          result.edited = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'gilded':
          result.gilded = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'gildings':
          result.gildings.replace(serializers.deserialize(value,
              specifiedType: const FullType(Gildings)) as Gildings);
          break;
        case 'hidden':
          result.hidden = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hide_score':
          result.hide_score = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_meta':
          result.is_meta = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_original_content':
          result.is_original_content = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_self':
          result.is_self = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_video':
          result.is_video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'link_flair_type':
          result.link_flair_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'mod_reason_title':
          result.mod_reason_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'num_comments':
          result.num_comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'num_crossposts':
          result.num_crossposts = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'over_18':
          result.over_18 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'permalink':
          result.permalink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pinned':
          result.pinned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'post_hint':
          result.post_hint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quarantine':
          result.quarantine = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'saved':
          result.saved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'selftext':
          result.selftext = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'spoiler':
          result.spoiler = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'subreddit':
          result.subreddit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subreddit_subscribers':
          result.subreddit_subscribers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'subreddit_type':
          result.subreddit_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_awards_received':
          result.total_awards_received = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ups':
          result.ups = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visited':
          result.visited = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'wls':
          result.wls = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PostWrapper extends PostWrapper {
  @override
  final String kind;
  @override
  final Post data;

  factory _$PostWrapper([void Function(PostWrapperBuilder) updates]) =>
      (new PostWrapperBuilder()..update(updates)).build();

  _$PostWrapper._({this.kind, this.data}) : super._() {
    if (kind == null) {
      throw new BuiltValueNullFieldError('PostWrapper', 'kind');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('PostWrapper', 'data');
    }
  }

  @override
  PostWrapper rebuild(void Function(PostWrapperBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostWrapperBuilder toBuilder() => new PostWrapperBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostWrapper && kind == other.kind && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, kind.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostWrapper')
          ..add('kind', kind)
          ..add('data', data))
        .toString();
  }
}

class PostWrapperBuilder implements Builder<PostWrapper, PostWrapperBuilder> {
  _$PostWrapper _$v;

  String _kind;
  String get kind => _$this._kind;
  set kind(String kind) => _$this._kind = kind;

  PostBuilder _data;
  PostBuilder get data => _$this._data ??= new PostBuilder();
  set data(PostBuilder data) => _$this._data = data;

  PostWrapperBuilder();

  PostWrapperBuilder get _$this {
    if (_$v != null) {
      _kind = _$v.kind;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostWrapper other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostWrapper;
  }

  @override
  void update(void Function(PostWrapperBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostWrapper build() {
    _$PostWrapper _$result;
    try {
      _$result = _$v ?? new _$PostWrapper._(kind: kind, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostWrapper', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Post extends Post {
  @override
  final bool allow_live_comments;
  @override
  final bool archived;
  @override
  final String author;
  @override
  final String author_flair_type;
  @override
  final bool can_gild;
  @override
  final bool clicked;
  @override
  final bool contest_mode;
  @override
  final double created;
  @override
  final double created_utc;
  @override
  final String domain;
  @override
  final JsonObject edited;
  @override
  final int gilded;
  @override
  final Gildings gildings;
  @override
  final bool hidden;
  @override
  final bool hide_score;
  @override
  final bool is_meta;
  @override
  final bool is_original_content;
  @override
  final bool is_self;
  @override
  final bool is_video;
  @override
  final String link_flair_type;
  @override
  final bool locked;
  @override
  final String mod_reason_title;
  @override
  final int num_comments;
  @override
  final int num_crossposts;
  @override
  final bool over_18;
  @override
  final String permalink;
  @override
  final bool pinned;
  @override
  final String post_hint;
  @override
  final bool quarantine;
  @override
  final bool saved;
  @override
  final int score;
  @override
  final String selftext;
  @override
  final bool spoiler;
  @override
  final String subreddit;
  @override
  final int subreddit_subscribers;
  @override
  final String subreddit_type;
  @override
  final String thumbnail;
  @override
  final String title;
  @override
  final int total_awards_received;
  @override
  final int ups;
  @override
  final String url;
  @override
  final bool visited;
  @override
  final int wls;

  factory _$Post([void Function(PostBuilder) updates]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {this.allow_live_comments,
      this.archived,
      this.author,
      this.author_flair_type,
      this.can_gild,
      this.clicked,
      this.contest_mode,
      this.created,
      this.created_utc,
      this.domain,
      this.edited,
      this.gilded,
      this.gildings,
      this.hidden,
      this.hide_score,
      this.is_meta,
      this.is_original_content,
      this.is_self,
      this.is_video,
      this.link_flair_type,
      this.locked,
      this.mod_reason_title,
      this.num_comments,
      this.num_crossposts,
      this.over_18,
      this.permalink,
      this.pinned,
      this.post_hint,
      this.quarantine,
      this.saved,
      this.score,
      this.selftext,
      this.spoiler,
      this.subreddit,
      this.subreddit_subscribers,
      this.subreddit_type,
      this.thumbnail,
      this.title,
      this.total_awards_received,
      this.ups,
      this.url,
      this.visited,
      this.wls})
      : super._() {
    if (allow_live_comments == null) {
      throw new BuiltValueNullFieldError('Post', 'allow_live_comments');
    }
    if (archived == null) {
      throw new BuiltValueNullFieldError('Post', 'archived');
    }
    if (author == null) {
      throw new BuiltValueNullFieldError('Post', 'author');
    }
    if (author_flair_type == null) {
      throw new BuiltValueNullFieldError('Post', 'author_flair_type');
    }
    if (can_gild == null) {
      throw new BuiltValueNullFieldError('Post', 'can_gild');
    }
    if (clicked == null) {
      throw new BuiltValueNullFieldError('Post', 'clicked');
    }
    if (contest_mode == null) {
      throw new BuiltValueNullFieldError('Post', 'contest_mode');
    }
    if (created == null) {
      throw new BuiltValueNullFieldError('Post', 'created');
    }
    if (created_utc == null) {
      throw new BuiltValueNullFieldError('Post', 'created_utc');
    }
    if (domain == null) {
      throw new BuiltValueNullFieldError('Post', 'domain');
    }
    if (edited == null) {
      throw new BuiltValueNullFieldError('Post', 'edited');
    }
    if (gilded == null) {
      throw new BuiltValueNullFieldError('Post', 'gilded');
    }
    if (gildings == null) {
      throw new BuiltValueNullFieldError('Post', 'gildings');
    }
    if (hidden == null) {
      throw new BuiltValueNullFieldError('Post', 'hidden');
    }
    if (hide_score == null) {
      throw new BuiltValueNullFieldError('Post', 'hide_score');
    }
    if (is_meta == null) {
      throw new BuiltValueNullFieldError('Post', 'is_meta');
    }
    if (is_original_content == null) {
      throw new BuiltValueNullFieldError('Post', 'is_original_content');
    }
    if (is_self == null) {
      throw new BuiltValueNullFieldError('Post', 'is_self');
    }
    if (is_video == null) {
      throw new BuiltValueNullFieldError('Post', 'is_video');
    }
    if (link_flair_type == null) {
      throw new BuiltValueNullFieldError('Post', 'link_flair_type');
    }
    if (locked == null) {
      throw new BuiltValueNullFieldError('Post', 'locked');
    }
    if (num_comments == null) {
      throw new BuiltValueNullFieldError('Post', 'num_comments');
    }
    if (num_crossposts == null) {
      throw new BuiltValueNullFieldError('Post', 'num_crossposts');
    }
    if (over_18 == null) {
      throw new BuiltValueNullFieldError('Post', 'over_18');
    }
    if (permalink == null) {
      throw new BuiltValueNullFieldError('Post', 'permalink');
    }
    if (pinned == null) {
      throw new BuiltValueNullFieldError('Post', 'pinned');
    }
    if (quarantine == null) {
      throw new BuiltValueNullFieldError('Post', 'quarantine');
    }
    if (saved == null) {
      throw new BuiltValueNullFieldError('Post', 'saved');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('Post', 'score');
    }
    if (selftext == null) {
      throw new BuiltValueNullFieldError('Post', 'selftext');
    }
    if (spoiler == null) {
      throw new BuiltValueNullFieldError('Post', 'spoiler');
    }
    if (subreddit == null) {
      throw new BuiltValueNullFieldError('Post', 'subreddit');
    }
    if (subreddit_subscribers == null) {
      throw new BuiltValueNullFieldError('Post', 'subreddit_subscribers');
    }
    if (subreddit_type == null) {
      throw new BuiltValueNullFieldError('Post', 'subreddit_type');
    }
    if (thumbnail == null) {
      throw new BuiltValueNullFieldError('Post', 'thumbnail');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Post', 'title');
    }
    if (total_awards_received == null) {
      throw new BuiltValueNullFieldError('Post', 'total_awards_received');
    }
    if (ups == null) {
      throw new BuiltValueNullFieldError('Post', 'ups');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Post', 'url');
    }
    if (visited == null) {
      throw new BuiltValueNullFieldError('Post', 'visited');
    }
    if (wls == null) {
      throw new BuiltValueNullFieldError('Post', 'wls');
    }
  }

  @override
  Post rebuild(void Function(PostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        allow_live_comments == other.allow_live_comments &&
        archived == other.archived &&
        author == other.author &&
        author_flair_type == other.author_flair_type &&
        can_gild == other.can_gild &&
        clicked == other.clicked &&
        contest_mode == other.contest_mode &&
        created == other.created &&
        created_utc == other.created_utc &&
        domain == other.domain &&
        edited == other.edited &&
        gilded == other.gilded &&
        gildings == other.gildings &&
        hidden == other.hidden &&
        hide_score == other.hide_score &&
        is_meta == other.is_meta &&
        is_original_content == other.is_original_content &&
        is_self == other.is_self &&
        is_video == other.is_video &&
        link_flair_type == other.link_flair_type &&
        locked == other.locked &&
        mod_reason_title == other.mod_reason_title &&
        num_comments == other.num_comments &&
        num_crossposts == other.num_crossposts &&
        over_18 == other.over_18 &&
        permalink == other.permalink &&
        pinned == other.pinned &&
        post_hint == other.post_hint &&
        quarantine == other.quarantine &&
        saved == other.saved &&
        score == other.score &&
        selftext == other.selftext &&
        spoiler == other.spoiler &&
        subreddit == other.subreddit &&
        subreddit_subscribers == other.subreddit_subscribers &&
        subreddit_type == other.subreddit_type &&
        thumbnail == other.thumbnail &&
        title == other.title &&
        total_awards_received == other.total_awards_received &&
        ups == other.ups &&
        url == other.url &&
        visited == other.visited &&
        wls == other.wls;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, allow_live_comments.hashCode), archived.hashCode), author.hashCode), author_flair_type.hashCode), can_gild.hashCode), clicked.hashCode), contest_mode.hashCode), created.hashCode), created_utc.hashCode), domain.hashCode), edited.hashCode), gilded.hashCode), gildings.hashCode), hidden.hashCode), hide_score.hashCode), is_meta.hashCode), is_original_content.hashCode), is_self.hashCode), is_video.hashCode), link_flair_type.hashCode), locked.hashCode), mod_reason_title.hashCode), num_comments.hashCode), num_crossposts.hashCode),
                                                                                over_18.hashCode),
                                                                            permalink.hashCode),
                                                                        pinned.hashCode),
                                                                    post_hint.hashCode),
                                                                quarantine.hashCode),
                                                            saved.hashCode),
                                                        score.hashCode),
                                                    selftext.hashCode),
                                                spoiler.hashCode),
                                            subreddit.hashCode),
                                        subreddit_subscribers.hashCode),
                                    subreddit_type.hashCode),
                                thumbnail.hashCode),
                            title.hashCode),
                        total_awards_received.hashCode),
                    ups.hashCode),
                url.hashCode),
            visited.hashCode),
        wls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('allow_live_comments', allow_live_comments)
          ..add('archived', archived)
          ..add('author', author)
          ..add('author_flair_type', author_flair_type)
          ..add('can_gild', can_gild)
          ..add('clicked', clicked)
          ..add('contest_mode', contest_mode)
          ..add('created', created)
          ..add('created_utc', created_utc)
          ..add('domain', domain)
          ..add('edited', edited)
          ..add('gilded', gilded)
          ..add('gildings', gildings)
          ..add('hidden', hidden)
          ..add('hide_score', hide_score)
          ..add('is_meta', is_meta)
          ..add('is_original_content', is_original_content)
          ..add('is_self', is_self)
          ..add('is_video', is_video)
          ..add('link_flair_type', link_flair_type)
          ..add('locked', locked)
          ..add('mod_reason_title', mod_reason_title)
          ..add('num_comments', num_comments)
          ..add('num_crossposts', num_crossposts)
          ..add('over_18', over_18)
          ..add('permalink', permalink)
          ..add('pinned', pinned)
          ..add('post_hint', post_hint)
          ..add('quarantine', quarantine)
          ..add('saved', saved)
          ..add('score', score)
          ..add('selftext', selftext)
          ..add('spoiler', spoiler)
          ..add('subreddit', subreddit)
          ..add('subreddit_subscribers', subreddit_subscribers)
          ..add('subreddit_type', subreddit_type)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('total_awards_received', total_awards_received)
          ..add('ups', ups)
          ..add('url', url)
          ..add('visited', visited)
          ..add('wls', wls))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post _$v;

  bool _allow_live_comments;
  bool get allow_live_comments => _$this._allow_live_comments;
  set allow_live_comments(bool allow_live_comments) =>
      _$this._allow_live_comments = allow_live_comments;

  bool _archived;
  bool get archived => _$this._archived;
  set archived(bool archived) => _$this._archived = archived;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _author_flair_type;
  String get author_flair_type => _$this._author_flair_type;
  set author_flair_type(String author_flair_type) =>
      _$this._author_flair_type = author_flair_type;

  bool _can_gild;
  bool get can_gild => _$this._can_gild;
  set can_gild(bool can_gild) => _$this._can_gild = can_gild;

  bool _clicked;
  bool get clicked => _$this._clicked;
  set clicked(bool clicked) => _$this._clicked = clicked;

  bool _contest_mode;
  bool get contest_mode => _$this._contest_mode;
  set contest_mode(bool contest_mode) => _$this._contest_mode = contest_mode;

  double _created;
  double get created => _$this._created;
  set created(double created) => _$this._created = created;

  double _created_utc;
  double get created_utc => _$this._created_utc;
  set created_utc(double created_utc) => _$this._created_utc = created_utc;

  String _domain;
  String get domain => _$this._domain;
  set domain(String domain) => _$this._domain = domain;

  JsonObject _edited;
  JsonObject get edited => _$this._edited;
  set edited(JsonObject edited) => _$this._edited = edited;

  int _gilded;
  int get gilded => _$this._gilded;
  set gilded(int gilded) => _$this._gilded = gilded;

  GildingsBuilder _gildings;
  GildingsBuilder get gildings => _$this._gildings ??= new GildingsBuilder();
  set gildings(GildingsBuilder gildings) => _$this._gildings = gildings;

  bool _hidden;
  bool get hidden => _$this._hidden;
  set hidden(bool hidden) => _$this._hidden = hidden;

  bool _hide_score;
  bool get hide_score => _$this._hide_score;
  set hide_score(bool hide_score) => _$this._hide_score = hide_score;

  bool _is_meta;
  bool get is_meta => _$this._is_meta;
  set is_meta(bool is_meta) => _$this._is_meta = is_meta;

  bool _is_original_content;
  bool get is_original_content => _$this._is_original_content;
  set is_original_content(bool is_original_content) =>
      _$this._is_original_content = is_original_content;

  bool _is_self;
  bool get is_self => _$this._is_self;
  set is_self(bool is_self) => _$this._is_self = is_self;

  bool _is_video;
  bool get is_video => _$this._is_video;
  set is_video(bool is_video) => _$this._is_video = is_video;

  String _link_flair_type;
  String get link_flair_type => _$this._link_flair_type;
  set link_flair_type(String link_flair_type) =>
      _$this._link_flair_type = link_flair_type;

  bool _locked;
  bool get locked => _$this._locked;
  set locked(bool locked) => _$this._locked = locked;

  String _mod_reason_title;
  String get mod_reason_title => _$this._mod_reason_title;
  set mod_reason_title(String mod_reason_title) =>
      _$this._mod_reason_title = mod_reason_title;

  int _num_comments;
  int get num_comments => _$this._num_comments;
  set num_comments(int num_comments) => _$this._num_comments = num_comments;

  int _num_crossposts;
  int get num_crossposts => _$this._num_crossposts;
  set num_crossposts(int num_crossposts) =>
      _$this._num_crossposts = num_crossposts;

  bool _over_18;
  bool get over_18 => _$this._over_18;
  set over_18(bool over_18) => _$this._over_18 = over_18;

  String _permalink;
  String get permalink => _$this._permalink;
  set permalink(String permalink) => _$this._permalink = permalink;

  bool _pinned;
  bool get pinned => _$this._pinned;
  set pinned(bool pinned) => _$this._pinned = pinned;

  String _post_hint;
  String get post_hint => _$this._post_hint;
  set post_hint(String post_hint) => _$this._post_hint = post_hint;

  bool _quarantine;
  bool get quarantine => _$this._quarantine;
  set quarantine(bool quarantine) => _$this._quarantine = quarantine;

  bool _saved;
  bool get saved => _$this._saved;
  set saved(bool saved) => _$this._saved = saved;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  String _selftext;
  String get selftext => _$this._selftext;
  set selftext(String selftext) => _$this._selftext = selftext;

  bool _spoiler;
  bool get spoiler => _$this._spoiler;
  set spoiler(bool spoiler) => _$this._spoiler = spoiler;

  String _subreddit;
  String get subreddit => _$this._subreddit;
  set subreddit(String subreddit) => _$this._subreddit = subreddit;

  int _subreddit_subscribers;
  int get subreddit_subscribers => _$this._subreddit_subscribers;
  set subreddit_subscribers(int subreddit_subscribers) =>
      _$this._subreddit_subscribers = subreddit_subscribers;

  String _subreddit_type;
  String get subreddit_type => _$this._subreddit_type;
  set subreddit_type(String subreddit_type) =>
      _$this._subreddit_type = subreddit_type;

  String _thumbnail;
  String get thumbnail => _$this._thumbnail;
  set thumbnail(String thumbnail) => _$this._thumbnail = thumbnail;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _total_awards_received;
  int get total_awards_received => _$this._total_awards_received;
  set total_awards_received(int total_awards_received) =>
      _$this._total_awards_received = total_awards_received;

  int _ups;
  int get ups => _$this._ups;
  set ups(int ups) => _$this._ups = ups;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  bool _visited;
  bool get visited => _$this._visited;
  set visited(bool visited) => _$this._visited = visited;

  int _wls;
  int get wls => _$this._wls;
  set wls(int wls) => _$this._wls = wls;

  PostBuilder();

  PostBuilder get _$this {
    if (_$v != null) {
      _allow_live_comments = _$v.allow_live_comments;
      _archived = _$v.archived;
      _author = _$v.author;
      _author_flair_type = _$v.author_flair_type;
      _can_gild = _$v.can_gild;
      _clicked = _$v.clicked;
      _contest_mode = _$v.contest_mode;
      _created = _$v.created;
      _created_utc = _$v.created_utc;
      _domain = _$v.domain;
      _edited = _$v.edited;
      _gilded = _$v.gilded;
      _gildings = _$v.gildings?.toBuilder();
      _hidden = _$v.hidden;
      _hide_score = _$v.hide_score;
      _is_meta = _$v.is_meta;
      _is_original_content = _$v.is_original_content;
      _is_self = _$v.is_self;
      _is_video = _$v.is_video;
      _link_flair_type = _$v.link_flair_type;
      _locked = _$v.locked;
      _mod_reason_title = _$v.mod_reason_title;
      _num_comments = _$v.num_comments;
      _num_crossposts = _$v.num_crossposts;
      _over_18 = _$v.over_18;
      _permalink = _$v.permalink;
      _pinned = _$v.pinned;
      _post_hint = _$v.post_hint;
      _quarantine = _$v.quarantine;
      _saved = _$v.saved;
      _score = _$v.score;
      _selftext = _$v.selftext;
      _spoiler = _$v.spoiler;
      _subreddit = _$v.subreddit;
      _subreddit_subscribers = _$v.subreddit_subscribers;
      _subreddit_type = _$v.subreddit_type;
      _thumbnail = _$v.thumbnail;
      _title = _$v.title;
      _total_awards_received = _$v.total_awards_received;
      _ups = _$v.ups;
      _url = _$v.url;
      _visited = _$v.visited;
      _wls = _$v.wls;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Post;
  }

  @override
  void update(void Function(PostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    _$Post _$result;
    try {
      _$result = _$v ??
          new _$Post._(
              allow_live_comments: allow_live_comments,
              archived: archived,
              author: author,
              author_flair_type: author_flair_type,
              can_gild: can_gild,
              clicked: clicked,
              contest_mode: contest_mode,
              created: created,
              created_utc: created_utc,
              domain: domain,
              edited: edited,
              gilded: gilded,
              gildings: gildings.build(),
              hidden: hidden,
              hide_score: hide_score,
              is_meta: is_meta,
              is_original_content: is_original_content,
              is_self: is_self,
              is_video: is_video,
              link_flair_type: link_flair_type,
              locked: locked,
              mod_reason_title: mod_reason_title,
              num_comments: num_comments,
              num_crossposts: num_crossposts,
              over_18: over_18,
              permalink: permalink,
              pinned: pinned,
              post_hint: post_hint,
              quarantine: quarantine,
              saved: saved,
              score: score,
              selftext: selftext,
              spoiler: spoiler,
              subreddit: subreddit,
              subreddit_subscribers: subreddit_subscribers,
              subreddit_type: subreddit_type,
              thumbnail: thumbnail,
              title: title,
              total_awards_received: total_awards_received,
              ups: ups,
              url: url,
              visited: visited,
              wls: wls);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gildings';
        gildings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
