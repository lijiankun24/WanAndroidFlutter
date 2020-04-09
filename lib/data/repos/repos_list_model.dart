import 'package:wanandroid_flutter/common/common_import.dart';

part 'repos_list_model.g.dart';

@JsonSerializable()
class ReposListModelResponse extends BaseResponse {
  ReposListPage data;

  ReposListModelResponse(this.data, int errorCode, String errorMsg)
      : super(errorCode, errorMsg);

  factory ReposListModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ReposListModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReposListModelResponseToJson(this);
}

@JsonSerializable()
class ReposListPage {
  int curPage;
  List<ReposModel> datas;
  int offset;
  bool over;
  int pageCount;
  int size;
  int total;

  ReposListPage(this.curPage, this.datas, this.offset, this.over,
      this.pageCount, this.size, this.total);

  factory ReposListPage.fromJson(Map<String, dynamic> json) =>
      _$ReposListPageFromJson(json);

  Map<String, dynamic> toJson() => _$ReposListPageToJson(this);
}

@JsonSerializable()
class ReposModel {
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

  ReposModel(
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
      this.tags,
      this.title,
      this.type,
      this.userId,
      this.visible,
      this.zan);

  factory ReposModel.fromJson(Map<String, dynamic> json) =>
      _$ReposModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReposModelToJson(this);
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
