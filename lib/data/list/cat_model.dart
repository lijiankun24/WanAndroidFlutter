import 'package:wanandroid_flutter/common/common_import.dart';

part 'package:wanandroid_flutter/data/list/cat_model.g.dart';

@JsonSerializable()
class CatModelResponse extends BaseResponse {
  List<CatModel> data;

  CatModelResponse(this.data, int errorCode, String errorMsg)
      : super(errorCode, errorMsg);

  factory CatModelResponse.fromJson(Map<String, dynamic> json) =>
      _$CatModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CatModelResponseToJson(this);
}

@JsonSerializable()
class CatModel {
  List<CatModel> children;
  int courseId;
  int id;
  String name;
  int order;
  int parentChapterId;
  bool userControlSetTop;
  int visible;

  CatModel(this.children, this.courseId, this.id, this.name, this.order,
      this.parentChapterId, this.userControlSetTop, this.visible);

  factory CatModel.fromJson(Map<String, dynamic> json) =>
      _$CatModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatModelToJson(this);
}
