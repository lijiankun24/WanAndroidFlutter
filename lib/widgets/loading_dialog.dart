import 'package:flutter/material.dart';

class LoadingDialog extends StatefulWidget {
  final String loadingMsg;
  final bool outsideDismiss;
  final Function dismissLoading;

  LoadingDialog({
    Key key,
    this.loadingMsg: '加载中',
    this.outsideDismiss: false,
    this.dismissLoading,
  }) : super(key: key);

  @override
  LoadingState createState() => LoadingState();
}

class LoadingState extends State<LoadingDialog> {
  void _dismiss() {
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    if (widget.dismissLoading != null) {
      widget.dismissLoading(() {
        Navigator.of(context).pop();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.outsideDismiss ? _dismiss : null,
        child: Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              width: 120.0,
              height: 120.0,
              decoration: ShapeDecoration(
                color: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new CircularProgressIndicator(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      widget.loadingMsg,
                      style: new TextStyle(fontSize: 12.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
