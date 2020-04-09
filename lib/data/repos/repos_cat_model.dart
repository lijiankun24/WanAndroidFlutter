import 'package:wanandroid_flutter/common/common_import.dart';

part 'repos_cat_model.g.dart';

@JsonSerializable()
class ReposCatModelResponse extends BaseResponse {
  List<ReposCatModel> data;

  ReposCatModelResponse(this.data, int errorCode, String errorMsg)
      : super(errorCode, errorMsg);

  factory ReposCatModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ReposCatModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReposCatModelResponseToJson(this);
}

@JsonSerializable()
class ReposCatModel {
  List<String> children;
  int courseId;
  int id;
  String name;
  int order;
  int parentChapterId;
  bool userControlSetTop;
  int visible;

  ReposCatModel(this.children, this.courseId, this.id, this.name, this.order,
      this.parentChapterId, this.userControlSetTop, this.visible);

  factory ReposCatModel.fromJson(Map<String, dynamic> json) =>
      _$ReposCatModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReposCatModelToJson(this);
}
