// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListingResponse> _$listingResponseSerializer =
    new _$ListingResponseSerializer();
Serializer<ListingData> _$listingDataSerializer = new _$ListingDataSerializer();

class _$ListingResponseSerializer
    implements StructuredSerializer<ListingResponse> {
  @override
  final Iterable<Type> types = const [ListingResponse, _$ListingResponse];
  @override
  final String wireName = 'ListingResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, ListingResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(ListingData)),
    ];

    return result;
  }

  @override
  ListingResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListingResponseBuilder();

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
              specifiedType: const FullType(ListingData)) as ListingData);
          break;
      }
    }

    return result.build();
  }
}

class _$ListingDataSerializer implements StructuredSerializer<ListingData> {
  @override
  final Iterable<Type> types = const [ListingData, _$ListingData];
  @override
  final String wireName = 'ListingData';

  @override
  Iterable<Object> serialize(Serializers serializers, ListingData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'modhash',
      serializers.serialize(object.modhash,
          specifiedType: const FullType(String)),
      'dist',
      serializers.serialize(object.dist, specifiedType: const FullType(int)),
      'children',
      serializers.serialize(object.children,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PostWrapper)])),
    ];

    return result;
  }

  @override
  ListingData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListingDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'modhash':
          result.modhash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dist':
          result.dist = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'children':
          result.children.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PostWrapper)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ListingResponse extends ListingResponse {
  @override
  final String kind;
  @override
  final ListingData data;

  factory _$ListingResponse([void Function(ListingResponseBuilder) updates]) =>
      (new ListingResponseBuilder()..update(updates)).build();

  _$ListingResponse._({this.kind, this.data}) : super._() {
    if (kind == null) {
      throw new BuiltValueNullFieldError('ListingResponse', 'kind');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('ListingResponse', 'data');
    }
  }

  @override
  ListingResponse rebuild(void Function(ListingResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingResponseBuilder toBuilder() =>
      new ListingResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingResponse && kind == other.kind && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, kind.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListingResponse')
          ..add('kind', kind)
          ..add('data', data))
        .toString();
  }
}

class ListingResponseBuilder
    implements Builder<ListingResponse, ListingResponseBuilder> {
  _$ListingResponse _$v;

  String _kind;
  String get kind => _$this._kind;
  set kind(String kind) => _$this._kind = kind;

  ListingDataBuilder _data;
  ListingDataBuilder get data => _$this._data ??= new ListingDataBuilder();
  set data(ListingDataBuilder data) => _$this._data = data;

  ListingResponseBuilder();

  ListingResponseBuilder get _$this {
    if (_$v != null) {
      _kind = _$v.kind;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListingResponse;
  }

  @override
  void update(void Function(ListingResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListingResponse build() {
    _$ListingResponse _$result;
    try {
      _$result = _$v ?? new _$ListingResponse._(kind: kind, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ListingResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListingData extends ListingData {
  @override
  final String modhash;
  @override
  final int dist;
  @override
  final BuiltList<PostWrapper> children;

  factory _$ListingData([void Function(ListingDataBuilder) updates]) =>
      (new ListingDataBuilder()..update(updates)).build();

  _$ListingData._({this.modhash, this.dist, this.children}) : super._() {
    if (modhash == null) {
      throw new BuiltValueNullFieldError('ListingData', 'modhash');
    }
    if (dist == null) {
      throw new BuiltValueNullFieldError('ListingData', 'dist');
    }
    if (children == null) {
      throw new BuiltValueNullFieldError('ListingData', 'children');
    }
  }

  @override
  ListingData rebuild(void Function(ListingDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingDataBuilder toBuilder() => new ListingDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingData &&
        modhash == other.modhash &&
        dist == other.dist &&
        children == other.children;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, modhash.hashCode), dist.hashCode), children.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListingData')
          ..add('modhash', modhash)
          ..add('dist', dist)
          ..add('children', children))
        .toString();
  }
}

class ListingDataBuilder implements Builder<ListingData, ListingDataBuilder> {
  _$ListingData _$v;

  String _modhash;
  String get modhash => _$this._modhash;
  set modhash(String modhash) => _$this._modhash = modhash;

  int _dist;
  int get dist => _$this._dist;
  set dist(int dist) => _$this._dist = dist;

  ListBuilder<PostWrapper> _children;
  ListBuilder<PostWrapper> get children =>
      _$this._children ??= new ListBuilder<PostWrapper>();
  set children(ListBuilder<PostWrapper> children) =>
      _$this._children = children;

  ListingDataBuilder();

  ListingDataBuilder get _$this {
    if (_$v != null) {
      _modhash = _$v.modhash;
      _dist = _$v.dist;
      _children = _$v.children?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListingData;
  }

  @override
  void update(void Function(ListingDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListingData build() {
    _$ListingData _$result;
    try {
      _$result = _$v ??
          new _$ListingData._(
              modhash: modhash, dist: dist, children: children.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'children';
        children.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ListingData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
