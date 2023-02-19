import 'package:flutter/cupertino.dart';
import 'package:tabnews_flutter/domain/entities/content_entity.dart';
import 'package:tabnews_flutter/domain/usecases/get_content_details_usecase.dart';
import 'package:tabnews_flutter/domain/usecases/get_contents_usecase.dart';

import '../../domain/entities/content_detail_entity.dart';

class ContentsProvider extends ChangeNotifier {
  final GetContentsUseCase getContentsUseCase = GetContentsUseCase();
  final GetContentDetailsUseCase getContentDetailsUseCase = GetContentDetailsUseCase();

  Future<List<ContentEntity>?> getContents() async {
    final response = await getContentsUseCase.getContents();
    notifyListeners();
    return response;
  }

  Future<ContentDetailEntity?> getContentDetail(String user, String slug) async {
    final response = await getContentDetailsUseCase.getContentDetail(user, slug);
    notifyListeners();
    return response;
  }
}