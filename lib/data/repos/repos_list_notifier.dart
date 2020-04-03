import 'package:wanandroid_flutter/common/common_import.dart';
import 'repos_list_model.dart';

class ReposListNotifier with ChangeNotifier {
  ReposListModelResponse _response;

  ReposListModelResponse get response => _response;

  Future<ReposListModelResponse> getReposList() {
    return Application.netManager
        .get(Api.REPOS_LIST)
        .then<ReposListModelResponse>((res) {
      _response = ReposListModelResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
