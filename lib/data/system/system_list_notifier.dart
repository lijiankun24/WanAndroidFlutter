import 'package:wanandroid_flutter/common/common_import.dart';

class SystemListNotifier with ChangeNotifier {
  ListItemModelResponse _response;

  ListItemModelResponse get response => _response;

  Future<ListItemModelResponse> getSystemList() {
    return Application.netManager
        .get(Api.SYSTEM_ARTICLE_LIST)
        .then<ListItemModelResponse>((_res) {
      _response = ListItemModelResponse.fromJson(_res.data);
      notifyListeners();
      return Future.value(_response);
    });
  }
}
