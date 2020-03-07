import 'package:dio/dio.dart';

/// 网络请求管理类，全局单例
class NetManager {
  static const TIMEOUT_TIME = 10 * 1000;

  static const GET = 'GET';
  static const POST = 'POST';

  static NetManager _netManager;
  static Dio _dio;

  NetManager._internal(String baseUrl) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: TIMEOUT_TIME,
      receiveTimeout: TIMEOUT_TIME,
      sendTimeout: TIMEOUT_TIME,
    ));
  }

  factory NetManager(String baseUrl) {
    if (_netManager == null) {
      _netManager = NetManager._internal(baseUrl);
    }
    return _netManager;
  }
}
