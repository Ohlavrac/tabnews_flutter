import 'package:flutter/cupertino.dart';
import 'package:tabnews_flutter/domain/entities/content_entity.dart';
import 'package:tabnews_flutter/domain/entities/contents_entity.dart';
import 'package:tabnews_flutter/domain/usecases/get_contents_usecase.dart';

class ContentsProvider extends ChangeNotifier {
  final GetContentsUseCase getContentsUseCase = GetContentsUseCase();

  Future<List<ContentEntity>?> getContents() async {
    final response = await getContentsUseCase.getContents();
    notifyListeners();
    return response;
  }
}