import 'package:wanandroid_flutter/common/common_import.dart';
import 'repos_list_model.dart';

class ReposListNotifier with ChangeNotifier {
  ReposListModelResponse _response;

  ReposListModelResponse get response => _response;

  Future<ReposListModelResponse> getReposList({Map params}) {
    return Application.netManager
        .get(Api.REPOS_LIST, params: params)
        .then<ReposListModelResponse>((res) {
      _response = ReposListModelResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
