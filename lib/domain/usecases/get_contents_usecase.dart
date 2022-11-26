import 'package:tabnews_flutter/domain/entities/content_entity.dart';
import 'package:tabnews_flutter/domain/entities/contents_entity.dart';
import 'package:tabnews_flutter/domain/repositories/contents_repository.dart';

import '../../data/repositories/remote_repository.dart';

class GetContentsUseCase {
  ContentsRepository repository;

  GetContentsUseCase() : repository = RemoteRepository();

  Future<List<ContentEntity>?> getContents() async {
    final response = await repository.getContents();
    return response;
  }
}