import 'package:wanandroid_flutter/common/common_import.dart';

part 'wx_article_list_model.g.dart';

@JsonSerializable()
class WxArticleListModelResponse extends BaseResponse {
  WxArticlePageModel data;

  WxArticleListModelResponse(this.data, int errorCode, String errorMsg)
      : super(errorCode, errorMsg);

  factory WxArticleListModelResponse.fromJson(Map<String, dynamic> json) =>
      _$WxArticleListModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WxArticleListModelResponseToJson(this);
}

@JsonSerializable()
class WxArticlePageModel {
  int curPage;
  List<WxArticleModel> datas;
  int offset;
  bool over;
  int pageCount;
  int size;
  int total;


  WxArticlePageModel(this.curPage, this.datas, this.offset, this.over,
      this.pageCount, this.size, this.total);

  factory WxArticlePageModel.fromJson(Map<String, dynamic> json) =>
      _$WxArticlePageModelFromJson(json);

  Map<String, dynamic> toJson() => _$WxArticlePageModelToJson(this);
}

@JsonSerializable()
class WxArticleModel {
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
  List<Tag> tags;
  String title;
  int type;
  int userId;
  int visible;
  int zan;

  WxArticleModel(this.apkLink, this.audit, this.author, this.canEdit,
      this.chapterId, this.chapterName, this.collect, this.courseId, this.desc,
      this.descMd, this.envelopePic, this.fresh, this.id, this.link,
      this.niceDate, this.niceShareDate, this.origin, this.prefix,
      this.projectLink, this.publishTime, this.selfVisible, this.shareDate,
      this.shareUser, this.superChapterId, this.superChapterName, this.tags,
      this.title, this.type, this.userId, this.visible, this.zan);


  factory WxArticleModel.fromJson(Map<String, dynamic> json) =>
      _$WxArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$WxArticleModelToJson(this);
}

@JsonSerializable()
class Tag {
  String name;
  String url;

  Tag(this.name, this.url);

  factory Tag.fromJson(Map<String, dynamic> json) =>
      _$TagFromJson(json);

  Map<String, dynamic> toJson() => _$TagToJson(this);
}
