import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/wx_article/wx_article_list_model.dart';

class WxArticleItem extends StatelessWidget {
  final WxArticleModel _article;

  WxArticleItem(this._article);

  @override
  Widget build(BuildContext context) {
    var publishTimeStr = ObjectUtil.timeToDate(_article.publishTime);
    return InkWell(
      onTap: null,
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
                      _article.author,
                      style: TextStyle(
                        color: Color(0xff8d8d98),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Text(
                    '${_article.superChapterName}/${_article.chapterName}',
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
                _article.title,
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
