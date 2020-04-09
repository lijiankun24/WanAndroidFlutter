// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_cat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReposCatModelResponse _$ReposCatModelResponseFromJson(
    Map<String, dynamic> json) {
  return ReposCatModelResponse(
      (json['data'] as List)
          ?.map((e) => e == null
              ? null
              : ReposCatModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['errorCode'] as int,
      json['errorMsg'] as String);
}

Map<String, dynamic> _$ReposCatModelResponseToJson(
        ReposCatModelResponse instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
      'data': instance.data
    };

ReposCatModel _$ReposCatModelFromJson(Map<String, dynamic> json) {
  return ReposCatModel(
      (json['children'] as List)?.map((e) => e as String)?.toList(),
      json['courseId'] as int,
      json['id'] as int,
      json['name'] as String,
      json['order'] as int,
      json['parentChapterId'] as int,
      json['userControlSetTop'] as bool,
      json['visible'] as int);
}

Map<String, dynamic> _$ReposCatModelToJson(ReposCatModel instance) =>
    <String, dynamic>{
      'children': instance.children,
      'courseId': instance.courseId,
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'parentChapterId': instance.parentChapterId,
      'userControlSetTop': instance.userControlSetTop,
      'visible': instance.visible
    };
