import 'package:tabnews_flutter/domain/entities/content_detail_entity.dart';

class ContentDetailDto extends ContentDetailEntity {
  String? id;
  String? ownerId;
  Null? parentId;
  String? slug;
  String? title;
  String? body;
  String? status;
  Null? sourceUrl;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  Null? deletedAt;
  String? ownerUsername;
  int? tabcoins;
  int? childrenDeepCount;

  ContentDetailDto(
      {this.id,
      this.ownerId,
      this.parentId,
      this.slug,
      this.title,
      this.body,
      this.status,
      this.sourceUrl,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.deletedAt,
      this.ownerUsername,
      this.tabcoins,
      this.childrenDeepCount});

  ContentDetailDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ownerId = json['owner_id'];
    parentId = json['parent_id'];
    slug = json['slug'];
    title = json['title'];
    body = json['body'];
    status = json['status'];
    sourceUrl = json['source_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    publishedAt = json['published_at'];
    deletedAt = json['deleted_at'];
    ownerUsername = json['owner_username'];
    tabcoins = json['tabcoins'];
    childrenDeepCount = json['children_deep_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['owner_id'] = this.ownerId;
    data['parent_id'] = this.parentId;
    data['slug'] = this.slug;
    data['title'] = this.title;
    data['body'] = this.body;
    data['status'] = this.status;
    data['source_url'] = this.sourceUrl;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['published_at'] = this.publishedAt;
    data['deleted_at'] = this.deletedAt;
    data['owner_username'] = this.ownerUsername;
    data['tabcoins'] = this.tabcoins;
    data['children_deep_count'] = this.childrenDeepCount;
    return data;
  }
}
