import 'package:wanandroid_flutter/common/common_import.dart';

part 'wx_article_cat_model.g.dart';

@JsonSerializable()
class WxArticleCatModelResponse extends BaseResponse {
  List<WxArticleCatModel> data;

  WxArticleCatModelResponse(this.data, int errorCode, String errorMsg)
      : super(errorCode, errorMsg);

  factory WxArticleCatModelResponse.fromJson(Map<String, dynamic> json) =>
      _$WxArticleCatModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WxArticleCatModelResponseToJson(this);
}

@JsonSerializable()
class WxArticleCatModel {
  List<String> children;
  int courseId;
  int id;
  String name;
  int order;
  int parentChapterId;
  bool userControlSetTop;
  int visible;

  WxArticleCatModel(this.children, this.courseId, this.id, this.name,
      this.order, this.parentChapterId, this.userControlSetTop, this.visible);

  factory WxArticleCatModel.fromJson(Map<String, dynamic> json) =>
      _$WxArticleCatModelFromJson(json);

  Map<String, dynamic> toJson() => _$WxArticleCatModelToJson(this);
}
