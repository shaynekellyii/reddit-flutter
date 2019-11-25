import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:readit/model/model.dart';

part 'listing_response.g.dart';

abstract class ListingResponse implements Built<ListingResponse, ListingResponseBuilder> {
  ListingResponse._();

  String get kind;
  ListingData get data;

  factory ListingResponse([updates(ListingResponseBuilder b)]) = _$ListingResponse;
  static Serializer<ListingResponse> get serializer => _$listingResponseSerializer;
}

abstract class ListingData implements Built<ListingData, ListingDataBuilder> {
  ListingData._();
  
  String get modhash;
  int get dist;
  BuiltList<PostWrapper> get children;

  factory ListingData([updates(ListingDataBuilder b)]) = _$ListingData;
  static Serializer<ListingData> get serializer => _$listingDataSerializer;
}
