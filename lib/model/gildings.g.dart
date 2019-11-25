// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gildings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gildings> _$gildingsSerializer = new _$GildingsSerializer();

class _$GildingsSerializer implements StructuredSerializer<Gildings> {
  @override
  final Iterable<Type> types = const [Gildings, _$Gildings];
  @override
  final String wireName = 'Gildings';

  @override
  Iterable<Object> serialize(Serializers serializers, Gildings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.gid_1 != null) {
      result
        ..add('gid_1')
        ..add(serializers.serialize(object.gid_1,
            specifiedType: const FullType(int)));
    }
    if (object.gid_2 != null) {
      result
        ..add('gid_2')
        ..add(serializers.serialize(object.gid_2,
            specifiedType: const FullType(int)));
    }
    if (object.gid_3 != null) {
      result
        ..add('gid_3')
        ..add(serializers.serialize(object.gid_3,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Gildings deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GildingsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'gid_1':
          result.gid_1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'gid_2':
          result.gid_2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'gid_3':
          result.gid_3 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Gildings extends Gildings {
  @override
  final int gid_1;
  @override
  final int gid_2;
  @override
  final int gid_3;

  factory _$Gildings([void Function(GildingsBuilder) updates]) =>
      (new GildingsBuilder()..update(updates)).build();

  _$Gildings._({this.gid_1, this.gid_2, this.gid_3}) : super._();

  @override
  Gildings rebuild(void Function(GildingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GildingsBuilder toBuilder() => new GildingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gildings &&
        gid_1 == other.gid_1 &&
        gid_2 == other.gid_2 &&
        gid_3 == other.gid_3;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, gid_1.hashCode), gid_2.hashCode), gid_3.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Gildings')
          ..add('gid_1', gid_1)
          ..add('gid_2', gid_2)
          ..add('gid_3', gid_3))
        .toString();
  }
}

class GildingsBuilder implements Builder<Gildings, GildingsBuilder> {
  _$Gildings _$v;

  int _gid_1;
  int get gid_1 => _$this._gid_1;
  set gid_1(int gid_1) => _$this._gid_1 = gid_1;

  int _gid_2;
  int get gid_2 => _$this._gid_2;
  set gid_2(int gid_2) => _$this._gid_2 = gid_2;

  int _gid_3;
  int get gid_3 => _$this._gid_3;
  set gid_3(int gid_3) => _$this._gid_3 = gid_3;

  GildingsBuilder();

  GildingsBuilder get _$this {
    if (_$v != null) {
      _gid_1 = _$v.gid_1;
      _gid_2 = _$v.gid_2;
      _gid_3 = _$v.gid_3;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gildings other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Gildings;
  }

  @override
  void update(void Function(GildingsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Gildings build() {
    final _$result =
        _$v ?? new _$Gildings._(gid_1: gid_1, gid_2: gid_2, gid_3: gid_3);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
