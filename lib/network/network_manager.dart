import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:readit/model/model.dart';
import 'package:readit/model/serializers.dart';

class NetworkManager {
  final Dio _dio = Dio()..options.baseUrl = 'https://www.reddit.com/';

  Future<ListingResponse> getTopPosts() async {
    final Response<String> response = await _dio.get('top.json');
    return serializers.deserializeWith(serializers.serializerForType(ListingResponse), json.decode(response.data));
  }
}
