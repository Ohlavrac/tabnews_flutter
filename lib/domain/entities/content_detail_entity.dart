class ContentDetailEntity {
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

  ContentDetailEntity(
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
}
