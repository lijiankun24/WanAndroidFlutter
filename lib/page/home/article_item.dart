import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/data/home/article_list/article_list_model.dart';
import 'package:wanandroid_flutter/common/object_util.dart';

class ArticleItem extends StatelessWidget {
  final ArticleModel articleModel;

  ArticleItem(this.articleModel);

  @override
  Widget build(BuildContext context) {
    double titleBottomPadding =
        ObjectUtil.isEmpty(articleModel.desc) ? 16.5 : 10;
    String publishTime = ObjectUtil.timeToDate(articleModel.publishTime);
    return InkWell(
      onTap: () {},
      child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 16.5,
                  bottom: titleBottomPadding,
                ),
                child: Text(
                  articleModel.title,
                  style: TextStyle(color: Color(0xff222333), fontSize: 16),
                  maxLines: 1,
                ),
              ),
              Visibility(
                visible: !ObjectUtil.isEmpty(articleModel.desc),
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 16.5,
                  ),
                  child: Text(
                    articleModel.desc,
                    style: TextStyle(color: Color(0xff8d8d98), fontSize: 12),
                    maxLines: 3,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Visibility(
                    visible: !ObjectUtil.isEmpty(articleModel.author),
                    child: Container(
                      padding: EdgeInsets.only(
                        right: 5,
                        bottom: 16.5,
                      ),
                      child: Text(
                        articleModel.author,
                        style:
                            TextStyle(color: Color(0xff8d8d98), fontSize: 12),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 16.5,
                    ),
                    child: Text(
                      publishTime,
                      style: TextStyle(color: Color(0xff8d8d98), fontSize: 12),
                    ),
                  ),
                ],
              ),
              Container(
                height: 0.5,
                color: new Color(0xffe3e3e3),
              ),
            ],
          )),
    );
  }
}
