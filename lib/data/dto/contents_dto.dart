import 'package:tabnews_flutter/data/dto/content_dto.dart';
import 'package:tabnews_flutter/domain/entities/content_entity.dart';

import '../../domain/entities/contents_entity.dart';

class ContentsDto extends ContentsEntity{
  List<ContentEntity>? content;
  ContentsDto(
      {this.content});

  ContentsDto.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      content = <ContentDto>[];
      json['results'].forEach((v) {
        content!.add(new ContentDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJsonList(List<dynamic> list) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = list;
    return data;
  }
}
