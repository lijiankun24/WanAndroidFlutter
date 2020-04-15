// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wx_article_cat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WxArticleCatModelResponse _$WxArticleCatModelResponseFromJson(
    Map<String, dynamic> json) {
  return WxArticleCatModelResponse(
      (json['data'] as List)
          ?.map((e) => e == null
              ? null
              : WxArticleCatModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['errorCode'] as int,
      json['errorMsg'] as String);
}

Map<String, dynamic> _$WxArticleCatModelResponseToJson(
        WxArticleCatModelResponse instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
      'data': instance.data
    };

WxArticleCatModel _$WxArticleCatModelFromJson(Map<String, dynamic> json) {
  return WxArticleCatModel(
      (json['children'] as List)?.map((e) => e as String)?.toList(),
      json['courseId'] as int,
      json['id'] as int,
      json['name'] as String,
      json['order'] as int,
      json['parentChapterId'] as int,
      json['userControlSetTop'] as bool,
      json['visible'] as int);
}

Map<String, dynamic> _$WxArticleCatModelToJson(WxArticleCatModel instance) =>
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
