import 'package:dio/dio.dart';
import 'package:tabnews_flutter/data/dto/contents_dto.dart';
import 'package:tabnews_flutter/data/datasources/contents_remote_datasource.dart';

import '../../dto/content_detail_dto.dart';
import '../../dto/content_dto.dart';

class ContentsRemoteDataSourceImpl implements ContentsRemoteDataSource {
  static String baseUrl = "https://www.tabnews.com.br/api/v1/contents";

  @override
  Future<List<ContentDto>?> getContents() async {
    Response response;
    response = await Dio().get(baseUrl);
    var convertedResponse = ContentsDto().toJsonList(response.data);
    if (response.statusCode == 200) {
      return ContentsDto.fromJson(convertedResponse).content as List<ContentDto>;
    } else {
      return null;
    }
  }
  
  @override
  Future<ContentDetailDto?> getContentDetail(String user, String slug) async {
    Response response;
    print("$baseUrl/$user/$slug");
    response = await Dio().get("$baseUrl/$user/$slug");
    if (response.statusCode == 200) {
      return ContentDetailDto.fromJson(response.data);
    } else {
      return null;
    }
  }
}