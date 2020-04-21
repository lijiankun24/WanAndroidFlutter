import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/cat_model.dart';

class WxArticleCatNotifier with ChangeNotifier {
  CatModelResponse _response;

  CatModelResponse get response => _response;

  Future<CatModelResponse> getWxArticleCat() {
    return Application.netManager
        .get(Api.WX_ARTICLE_CAT)
        .then<CatModelResponse>((res) {
      _response = CatModelResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
