// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListItemModelResponse _$ListItemModelResponseFromJson(
    Map<String, dynamic> json) {
  return ListItemModelResponse(
      json['data'] == null
          ? null
          : ListPageModel.fromJson(json['data'] as Map<String, dynamic>),
      json['errorCode'] as int,
      json['errorMsg'] as String);
}

Map<String, dynamic> _$ListItemModelResponseToJson(
        ListItemModelResponse instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
      'data': instance.data
    };

ListPageModel _$ListPageModelFromJson(Map<String, dynamic> json) {
  return ListPageModel(
      json['curPage'] as int,
      (json['datas'] as List)
          ?.map((e) => e == null
              ? null
              : ListItemModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['offset'] as int,
      json['over'] as bool,
      json['pageCount'] as int,
      json['size'] as int,
      json['total'] as int);
}

Map<String, dynamic> _$ListPageModelToJson(ListPageModel instance) =>
    <String, dynamic>{
      'curPage': instance.curPage,
      'datas': instance.datas,
      'offset': instance.offset,
      'over': instance.over,
      'pageCount': instance.pageCount,
      'size': instance.size,
      'total': instance.total
    };

ListItemModel _$ListItemModelFromJson(Map<String, dynamic> json) {
  return ListItemModel(
      json['apkLink'] as String,
      json['audit'] as int,
      json['author'] as String,
      json['canEdit'] as bool,
      json['chapterId'] as int,
      json['chapterName'] as String,
      json['collect'] as bool,
      json['courseId'] as int,
      json['desc'] as String,
      json['descMd'] as String,
      json['envelopePic'] as String,
      json['fresh'] as bool,
      json['id'] as int,
      json['link'] as String,
      json['niceDate'] as String,
      json['niceShareDate'] as String,
      json['origin'] as String,
      json['prefix'] as String,
      json['projectLink'] as String,
      json['publishTime'] as int,
      json['selfVisible'] as int,
      json['shareDate'] as int,
      json['shareUser'] as String,
      json['superChapterId'] as int,
      json['superChapterName'] as String,
      (json['tags'] as List)
          ?.map(
              (e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['title'] as String,
      json['type'] as int,
      json['userId'] as int,
      json['visible'] as int,
      json['zan'] as int);
}

Map<String, dynamic> _$ListItemModelToJson(ListItemModel instance) =>
    <String, dynamic>{
      'apkLink': instance.apkLink,
      'audit': instance.audit,
      'author': instance.author,
      'canEdit': instance.canEdit,
      'chapterId': instance.chapterId,
      'chapterName': instance.chapterName,
      'collect': instance.collect,
      'courseId': instance.courseId,
      'desc': instance.desc,
      'descMd': instance.descMd,
      'envelopePic': instance.envelopePic,
      'fresh': instance.fresh,
      'id': instance.id,
      'link': instance.link,
      'niceDate': instance.niceDate,
      'niceShareDate': instance.niceShareDate,
      'origin': instance.origin,
      'prefix': instance.prefix,
      'projectLink': instance.projectLink,
      'publishTime': instance.publishTime,
      'selfVisible': instance.selfVisible,
      'shareDate': instance.shareDate,
      'shareUser': instance.shareUser,
      'superChapterId': instance.superChapterId,
      'superChapterName': instance.superChapterName,
      'tags': instance.tags,
      'title': instance.title,
      'type': instance.type,
      'userId': instance.userId,
      'visible': instance.visible,
      'zan': instance.zan
    };

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(json['name'] as String, json['url'] as String);
}

Map<String, dynamic> _$TagToJson(Tag instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
