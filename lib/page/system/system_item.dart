import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/common_import.dart';

class SystemItem extends StatelessWidget {
  final CatModel catModel;
  final ValueChanged<CatModel> valueChanged;

  SystemItem({Key key, this.catModel, this.valueChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => valueChanged(catModel),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 16.5,
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          catModel.name,
                          style: TextStyle(
                            color: Color(0xff222333),
                            fontSize: 16,
                          ),
                        ),
                        Wrap(
                          children: buildTag(catModel.children),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/ic_more.png',
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
            ),
            Container(
              height: 0.5,
              color: Color(0xffe3e3e3),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildTag(List<CatModel> childTag) {
    return childTag.map(
      (model) {
        return Text(
          model.name,
          style: TextStyle(
            color: Color(0xff222333),
            fontSize: 16,
          ),
        );
      },
    ).toList();
  }
}
