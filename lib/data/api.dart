/// 网络请求接口枚举类

class Api {
  static const BASE_URL = 'https://www.wanandroid.com';

  /// 首页 Banner 数据
  static const HOME_BANNER = '/banner/json';

  /// 首页 文章列表
  static const ARTICLE_LIST = '/article/list/1/json';

  /// 项目分类 (首页的第二个tab)
  static const REPOS_CAT = '/project/tree/json';

  /// 项目 (首页的第二个tab)
  static const REPOS_LIST = "/project/list/1/json";
}
