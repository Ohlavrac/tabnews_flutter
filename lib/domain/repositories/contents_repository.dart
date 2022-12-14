import 'package:tabnews_flutter/domain/entities/content_detail_entity.dart';
import 'package:tabnews_flutter/domain/entities/content_entity.dart';

import '../../data/datasources/contents_remote_datasource.dart';

abstract class ContentsRepository {
  late ContentsRemoteDataSource remote;

  ContentsRepository({required this.remote});

  Future<List<ContentEntity>?> getContents();

  Future<ContentDetailEntity?> getContentDetail(String user, String slug);
}