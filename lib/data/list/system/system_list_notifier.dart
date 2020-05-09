import 'package:wanandroid_flutter/common/common_import.dart';

class SystemListNotifier with ChangeNotifier {
  ListItemModelResponse _response;

  ListItemModelResponse get response => _response;

  Future<ListItemModelResponse> getSystemList(int id) {
    return Application.netManager
        .get(sprintf(Api.SYSTEM_ARTICLE_LIST, [id]))
        .then<ListItemModelResponse>((_res) {
      _response = ListItemModelResponse.fromJson(_res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
