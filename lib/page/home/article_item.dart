import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/data/home/article_list/article_list_model.dart';
import 'package:wanandroid_flutter/common/object_util.dart';

class ArticleItem extends StatelessWidget {
  final ArticleModel articleModel;

  ArticleItem(this.articleModel);

  @override
  Widget build(BuildContext context) {
    double titleBottomPadding = ObjectUtil.isEmpty(articleModel.desc) ? 15 : 10;
    return InkWell(
      onTap: () {},
      child: Container(
          alignment: Alignment.centerLeft,
          color: Colors.lightBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20,
                  bottom: titleBottomPadding,
                ),
                child: Text(
                  articleModel.title,
                  maxLines: 1,
                ),
              ),
              Visibility(
                visible: !ObjectUtil.isEmpty(articleModel.desc),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 15,
                  ),
                  child: Text(
                    articleModel.desc,
                    maxLines: 3,
                  ),
                ),
              ),
              Container(
                height: 0.5,
                color: Colors.grey,
              ),
            ],
          )),
    );
  }
}
