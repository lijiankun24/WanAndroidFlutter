import 'package:wanandroid_flutter/common/common_import.dart';

part 'list_item_model.g.dart';

@JsonSerializable()
class ListItemModelResponse extends BaseResponse {
  ListPageModel data;

  ListItemModelResponse(this.data, int errorCode, String errorMsg)
      : super(errorCode, errorMsg);

  factory ListItemModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ListItemModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListItemModelResponseToJson(this);
}

@JsonSerializable()
class ListPageModel {
  int curPage;
  List<ListItemModel> datas;
  int offset;
  bool over;
  int pageCount;
  int size;
  int total;

  ListPageModel(this.curPage, this.datas, this.offset, this.over,
      this.pageCount, this.size, this.total);

  factory ListPageModel.fromJson(Map<String, dynamic> json) =>
      _$ListPageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListPageModelToJson(this);
}

@JsonSerializable()
class ListItemModel {
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

  ListItemModel(this.apkLink, this.audit, this.author, this.canEdit,
      this.chapterId, this.chapterName, this.collect, this.courseId, this.desc,
      this.descMd, this.envelopePic, this.fresh, this.id, this.link,
      this.niceDate, this.niceShareDate, this.origin, this.prefix,
      this.projectLink, this.publishTime, this.selfVisible, this.shareDate,
      this.shareUser, this.superChapterId, this.superChapterName, this.tags,
      this.title, this.type, this.userId, this.visible, this.zan);


  factory ListItemModel.fromJson(Map<String, dynamic> json) =>
      _$ListItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListItemModelToJson(this);
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