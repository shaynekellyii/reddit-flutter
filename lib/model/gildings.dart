import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gildings.g.dart';

abstract class Gildings implements Built<Gildings, GildingsBuilder> {
  Gildings._();

  @nullable
  int get gid_1;
  @nullable
  int get gid_2;
  @nullable
  int get gid_3;  

  factory Gildings([updates(GildingsBuilder b)]) = _$Gildings;
  static Serializer<Gildings> get serializer => _$gildingsSerializer;
}