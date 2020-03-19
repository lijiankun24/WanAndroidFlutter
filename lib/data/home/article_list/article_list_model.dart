import 'package:wanandroid_flutter/common/common_import.dart';

part 'article_list_model.g.dart';

@JsonSerializable()
class ArticleListResponse {
  ArticleListPage data;
  int errorCode;
  String errorMsg;

  ArticleListResponse(this.data, this.errorCode, this.errorMsg);

  factory ArticleListResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleListResponseToJson(this);
}

@JsonSerializable()
class ArticleListPage {
  int curPage;
  List<ArticleModel> datas;
  int offset;
  bool over;
  int pageCount;
  int size;
  int total;

  ArticleListPage(this.curPage, this.datas, this.offset, this.over,
      this.pageCount, this.size, this.total);

  factory ArticleListPage.fromJson(Map<String, dynamic> json) =>
      _$ArticleListPageFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleListPageToJson(this);
}

@JsonSerializable()
class ArticleModel {
  String apkLink;
  int audit;
  String author;
  bool canEdit;
  int chapterId;
  String chapterName;
  bool collect;
  int courseId;
  String desc;
  String descMd;
  String envelopePic;
  bool fresh;
  int id;
  String link;
  String niceDate;
  String niceShareDate;
  String origin;
  String prefix;
  String projectLink;
  int publishTime;
  int selfVisible;
  int shareDate;
  String shareUser;
  int superChapterId;
  String superChapterName;
  String title;
  int type;
  int userId;
  int visible;
  int zan;

  ArticleModel(
      this.apkLink,
      this.audit,
      this.author,
      this.canEdit,
      this.chapterId,
      this.chapterName,
      this.collect,
      this.courseId,
      this.desc,
      this.descMd,
      this.envelopePic,
      this.fresh,
      this.id,
      this.link,
      this.niceDate,
      this.niceShareDate,
      this.origin,
      this.prefix,
      this.projectLink,
      this.publishTime,
      this.selfVisible,
      this.shareDate,
      this.shareUser,
      this.superChapterId,
      this.superChapterName,
      this.title,
      this.type,
      this.userId,
      this.visible,
      this.zan);

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
