import 'package:tabnews_flutter/domain/entities/content_entity.dart';

import '../../domain/entities/contents_entity.dart';

class ContentDto extends ContentEntity{
  String? id;
  String? ownerId;
  Null? parentId;
  String? slug;
  String? title;
  String? status;
  String? sourceUrl;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  Null? deletedAt;
  int? tabcoins;
  String? ownerUsername;
  int? childrenDeepCount;

  ContentDto(
      {this.id,
      this.ownerId,
      this.parentId,
      this.slug,
      this.title,
      this.status,
      this.sourceUrl,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.deletedAt,
      this.tabcoins,
      this.ownerUsername,
      this.childrenDeepCount});

  ContentDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ownerId = json['owner_id'];
    parentId = json['parent_id'];
    slug = json['slug'];
    title = json['title'];
    status = json['status'];
    sourceUrl = json['source_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    publishedAt = json['published_at'];
    deletedAt = json['deleted_at'];
    tabcoins = json['tabcoins'];
    ownerUsername = json['owner_username'];
    childrenDeepCount = json['children_deep_count'];
  }

  Map<String, dynamic> toJsonList(List<dynamic> list) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = list;
    return data;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['owner_id'] = this.ownerId;
    data['parent_id'] = this.parentId;
    data['slug'] = this.slug;
    data['title'] = this.title;
    data['status'] = this.status;
    data['source_url'] = this.sourceUrl;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['published_at'] = this.publishedAt;
    data['deleted_at'] = this.deletedAt;
    data['tabcoins'] = this.tabcoins;
    data['owner_username'] = this.ownerUsername;
    data['children_deep_count'] = this.childrenDeepCount;
    return data;
  }
}
