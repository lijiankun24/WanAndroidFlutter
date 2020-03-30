import 'package:wanandroid_flutter/common/common_import.dart';

import 'article_list_model.dart';

class ArticleNotifier with ChangeNotifier {
  ArticleListResponse _response;

  ArticleListResponse get response => _response;

  Future<ArticleListResponse> getArticleList() {
    return Application.netManager
        .get(Api.ARTICLE_LIST)
        .then<ArticleListResponse>((res) {
      _response = ArticleListResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
