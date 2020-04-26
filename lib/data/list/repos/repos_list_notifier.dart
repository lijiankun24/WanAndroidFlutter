import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/list/list_item_model.dart';

class ReposListNotifier with ChangeNotifier {
  ListItemModelResponse _response;

  ListItemModelResponse get response => _response;

  Future<ListItemModelResponse> getReposList({Map params}) {
    return Application.netManager
        .get(Api.REPOS_LIST, params: params)
        .then<ListItemModelResponse>((res) {
      _response = ListItemModelResponse.fromJson(res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
