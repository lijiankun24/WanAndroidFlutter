import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/common/common_import.dart';

class SystemItem extends StatelessWidget {
  CatModel catModel;
  ValueChanged<CatModel> valueChanged;

  SystemItem({Key key, this.catModel, this.valueChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(catModel.name),
                    Container(
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
              ),
              Image.asset(
                'images/ic_more.png',
                width: 24,
                height: 24,
              ),
            ],
          ),
          Container(
            height: 0.5,
            color: Color(0xffe3e3e3),
          ),
        ],
      ),
    );
  }
}
