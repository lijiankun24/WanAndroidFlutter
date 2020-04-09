import 'package:wanandroid_flutter/common/common_import.dart';
import 'repos_cat_model.dart';

class ReposCatNotifier with ChangeNotifier {
  ReposCatModelResponse _response;

  ReposCatModelResponse get response => _response;

  Future<ReposCatModelResponse> getReposCat() {
    return Application.netManager
        .get(Api.REPOS_CAT)
        .then<ReposCatModelResponse>((res) {
      _response = ReposCatModelResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
