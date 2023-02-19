import 'package:tabnews_flutter/data/repositories/remote_repository.dart';
import 'package:tabnews_flutter/domain/entities/content_detail_entity.dart';
import 'package:tabnews_flutter/domain/entities/content_entity.dart';
import 'package:tabnews_flutter/domain/repositories/contents_repository.dart';

class GetContentDetailsUseCase {
  ContentsRepository repository;

  GetContentDetailsUseCase() : repository = RemoteRepository();

  Future<ContentDetailEntity?> getContentDetail(String user, String slug) async {
    return await repository.getContentDetail(user, slug);
  }
}