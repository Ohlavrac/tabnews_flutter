class ContentEntity {
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

  ContentEntity(
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
}
