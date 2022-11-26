import '../dto/content_dto.dart';

abstract class ContentsRemoteDataSource {
  Future<List<ContentDto>?> getContents();
}