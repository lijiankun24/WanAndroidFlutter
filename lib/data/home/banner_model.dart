import 'package:json_annotation/json_annotation.dart';
import 'package:wanandroid_flutter/base/base_response.dart';

part 'package:wanandroid_flutter/data/home/banner_model.g.dart';

@JsonSerializable()
class BannerResponse extends BaseResponse {
  List<BannerModel> data;

  BannerResponse(this.data, int errorCode, String errorMsg)
      : super(errorCode, errorMsg);

  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BannerResponseToJson(this);
}

@JsonSerializable()
class BannerModel {
  int id;
  String desc;
  String imagePath;
  int isVisible;
  int order;
  String title;
  int type;
  String url;

  BannerModel(this.id, this.desc, this.imagePath, this.isVisible, this.order,
      this.title, this.type, this.url);

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);

//  BannerModel.fromJson(Map<String, dynamic> json)
//      : this.id = json['id'],
//        this.desc = json['desc'],
//        this.imagePath = json['imagePath'],
//        this.isVisible = json['isVisible'],
//        this.order = json['order'],
//        this.title = json['title'],
//        this.type = json['type'],
//        this.url = json['url'];
//
//  Map<String, dynamic> toJson() => {
//        'id': id,
//        'desc': desc,
//        'imagePath': imagePath,
//        'isVisible': isVisible,
//        'order': order,
//        'title': title,
//        'type': type,
//        'url': url,
//      };
}
