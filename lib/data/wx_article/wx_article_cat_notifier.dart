import 'package:wanandroid_flutter/common/common_import.dart';
import 'wx_article_cat_model.dart';

class WxArticleCatNotifier with ChangeNotifier {
  WxArticleCatModelResponse _response;

  WxArticleCatModelResponse get response => _response;

  Future<WxArticleCatModelResponse> getWxArticleCat() {
    return Application.netManager
        .get(Api.WX_ARTICLE_CAT)
        .then<WxArticleCatModelResponse>((res) {
      _response = WxArticleCatModelResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
