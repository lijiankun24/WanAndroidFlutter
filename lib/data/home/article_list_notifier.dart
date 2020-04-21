import 'package:wanandroid_flutter/common/common_import.dart';

import 'package:wanandroid_flutter/data/list_item_model.dart';

class ArticleNotifier with ChangeNotifier {
  ListItemModelResponse _response;

  ListItemModelResponse get response => _response;

  Future<ListItemModelResponse> getArticleList() {
    return Application.netManager
        .get(Api.ARTICLE_LIST)
        .then<ListItemModelResponse>((res) {
      _response = ListItemModelResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
