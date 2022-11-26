import 'package:tabnews_flutter/data/datasources/remote/contents_remote_datasource_imp.dart';
import 'package:tabnews_flutter/domain/entities/contents_entity.dart';
import 'package:tabnews_flutter/domain/repositories/contents_repository.dart';

import '../dto/content_dto.dart';

class RemoteRepository extends ContentsRepository {
  RemoteRepository() : super(remote: ContentsRemoteDataSourceImpl());

  Future<List<ContentDto>?> getContents() async {
    return await remote.getContents();
  }
}