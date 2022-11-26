import 'package:dio/dio.dart';
import 'package:tabnews_flutter/data/dto/contents_dto.dart';
import 'package:tabnews_flutter/data/datasources/contents_remote_datasource.dart';

import '../../dto/content_dto.dart';

class ContentsRemoteDataSourceImpl implements ContentsRemoteDataSource {
  static String baseUrl = "https://www.tabnews.com.br/api/v1/contents";

  @override
  Future<List<ContentDto>?> getContents() async {
    Response response;
    response = await Dio().get(baseUrl);
    var convertedResponse = ContentsDto().toJsonList(response.data);
    print(convertedResponse);
    if (response.statusCode == 200) {
      return ContentsDto.fromJson(convertedResponse).content as List<ContentDto>;
    } else {
      return null;
    }
  }
}