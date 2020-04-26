import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/list/list_item_model.dart';

class WxArticleItem extends StatelessWidget {
  final ListItemModel article;
  final ValueChanged<ListItemModel> valueChanged;

  WxArticleItem({Key key, this.article, this.valueChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var publishTimeStr = ObjectUtil.timeToDate(article.publishTime);
    return InkWell(
      onTap: () {
        if (valueChanged != null) {
          valueChanged(article);
        }
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16.5),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      article.author,
                      style: TextStyle(
                        color: Color(0xff8d8d98),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Text(
                    '${article.superChapterName}/${article.chapterName}',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xff8d8d98),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                article.title,
                style: TextStyle(
                  color: Color(0xff222333),
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                publishTimeStr,
                style: TextStyle(
                  color: Color(0xff8d8d98),
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 0.5,
              color: Color(0xffe3e3e3),
            ),
          ],
        ),
      ),
    );
  }
}
