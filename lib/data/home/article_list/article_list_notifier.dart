import 'package:wanandroid_flutter/common/common_import.dart';

import 'article_list_model.dart';

class ArticleNotifier with ChangeNotifier {
  ArticleListResponse _response;

  ArticleListResponse get response => _response;

  void getArticleList() {
    Application.netManager.get(Api.ARTICLE_LIST).then((response) {
      _response = ArticleListResponse.fromJson(response.data);
      notifyListeners();
    });
  }
}
