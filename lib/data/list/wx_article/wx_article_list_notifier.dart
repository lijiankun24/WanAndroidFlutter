import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/list/list_item_model.dart';

class WxArticleListNotifier with ChangeNotifier {
  ListItemModelResponse _response;

  ListItemModelResponse get response => _response;

  Future<ListItemModelResponse> getWxArticleList(int id) {
    return Application.netManager
        .get(sprintf(Api.WX_ARTICLE_LIST, [id]))
        .then<ListItemModelResponse>((res) {
      _response = ListItemModelResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
