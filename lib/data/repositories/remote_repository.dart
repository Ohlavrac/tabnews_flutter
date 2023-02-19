import 'package:tabnews_flutter/data/datasources/remote/contents_remote_datasource_imp.dart';
import 'package:tabnews_flutter/domain/repositories/contents_repository.dart';

import '../dto/content_detail_dto.dart';
import '../dto/content_dto.dart';

class RemoteRepository extends ContentsRepository {
  RemoteRepository() : super(remote: ContentsRemoteDataSourceImpl());

  @override
  Future<List<ContentDto>?> getContents() async {
    return await remote.getContents();
  }

  Future<ContentDetailDto?> getContentDetail(String user, String slug) async {
    return await remote.getContentDetail(user, slug);
  }
}