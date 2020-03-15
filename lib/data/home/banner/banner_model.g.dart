// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) {
  return BannerResponse(
      json['errorMsg'] as String,
      json['errorCode'] as int,
      (json['data'] as List)
          ?.map((e) => e == null
              ? null
              : BannerModel.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$BannerResponseToJson(BannerResponse instance) =>
    <String, dynamic>{
      'errorMsg': instance.errorMsg,
      'errorCode': instance.errorCode,
      'data': instance.data
    };

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return BannerModel(
      json['id'] as int,
      json['desc'] as String,
      json['imagePath'] as String,
      json['isVisible'] as int,
      json['order'] as int,
      json['title'] as String,
      json['type'] as int,
      json['url'] as String);
}

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'desc': instance.desc,
      'imagePath': instance.imagePath,
      'isVisible': instance.isVisible,
      'order': instance.order,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url
    };
