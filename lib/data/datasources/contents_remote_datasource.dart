import '../dto/content_detail_dto.dart';
import '../dto/content_dto.dart';

abstract class ContentsRemoteDataSource {
  Future<List<ContentDto>?> getContents();
  Future<ContentDetailDto?> getContentDetail(String user, String slug);
}