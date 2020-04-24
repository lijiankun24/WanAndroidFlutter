/// 网络请求接口枚举类

class Api {
  static const BASE_URL = 'https://www.wanandroid.com';

  /// 首页 Banner 数据
  static const HOME_BANNER = '/banner/json';

  /// 首页 文章列表
  static const ARTICLE_LIST = '/article/list/1/json';

  /// 项目分类 (第二个tab)
  static const REPOS_CAT = '/project/tree/json';

  /// 某个项目分类列表 (第二个tab)
  static const REPOS_LIST = "/project/list/1/json";

  /// 微信公众号分类（第三个tab）
  static const WX_ARTICLE_CAT = "/wxarticle/chapters/json";

  /// 某个微信公众号分类列表（第三个tab）
  static const WX_ARTICLE_LIST = '/wxarticle/list/%d/1/json';

  /// 知识体系分类（第四个tab）
  static const SYSTEM_CAT = '/tree/json';

  /// 某个知识体系分类下的文章列表（第四个tab）
  static const SYSTEM_ARTICLE_LIST = '/article/list/0/json?cid=%d';
}
