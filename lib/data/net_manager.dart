import 'package:dio/dio.dart';

/// 网络请求管理类，全局单例

typedef ErrorCallback = void Function(String errorMsg);

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

  void addInterceptor(InterceptorsWrapper interceptor) {
    _dio.interceptors.add(interceptor);
  }

  void addInterceptors(List<InterceptorsWrapper> interceptors) {
    _dio.interceptors.clear();
    _dio.interceptors.addAll(interceptors);
  }

  Future<Response<T>> get<T>(String path,
      {Map params, ErrorCallback errorCallback}) {
    return _request<T>(GET, path, params: params, errorCallback: errorCallback);
  }

  Future<Response<T>> post<T>(String path,
      {Map params, ErrorCallback errorCallback}) {
    return _request<T>(POST, path,
        params: params, errorCallback: errorCallback);
  }

  Future<Response<T>> _request<T>(String method, String path,
      {Map params, ErrorCallback errorCallback}) async {
    Response res;
    try {
      if (method == GET) {
        if (params != null && params.isNotEmpty) {
          StringBuffer paramsBuffer = StringBuffer();
          paramsBuffer.write('?');
          params.forEach((key, value) {
            paramsBuffer.write('$key=$value&');
          });
          path += paramsBuffer.toString().substring(0, paramsBuffer.length - 1);
        }
        res = await _dio.get(path);
      } else if (method == POST) {
        if (params != null && params.isNotEmpty) {
          res = await _dio.post(path, data: params);
        } else {
          res = await _dio.post(path);
        }
      }
      if (res != null && res.statusCode != 200 && errorCallback != null) {
        errorCallback('response is error and error code is ${res.statusCode}');
      }
      return res;
    } catch (e) {
      if (errorCallback != null) {
        errorCallback('request error happend and error is ${e.toString()}');
      }
      return null;
    }
  }
}
