import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/repos/repos_list_model.dart';

class ReposItem extends StatelessWidget {
  final ReposModel reposModel;
  final ValueChanged<ReposModel> valueChanged;

  ReposItem({Key key, this.reposModel, this.valueChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double titleBottomPadding = ObjectUtil.isEmpty(reposModel.desc) ? 16.5 : 10;
    var publistTimeStr = ObjectUtil.timeToDate(reposModel.publishTime);
    return InkWell(
      onTap: null,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 16.5,
                bottom: titleBottomPadding,
              ),
              child: Text(
                reposModel.title,
                style: TextStyle(
                  color: Color(0xff222333),
                  fontSize: 16,
                ),
                maxLines: 1,
              ),
            ),
            Visibility(
              visible: !ObjectUtil.isEmpty(reposModel.desc),
              child: Container(
                padding: const EdgeInsets.only(
                  bottom: 16.5,
                ),
                child: Text(
                  reposModel.desc,
                  style: TextStyle(
                    color: Color(0xff8d8d98),
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Visibility(
                  visible: !ObjectUtil.isEmpty(reposModel.author),
                  child: Container(
                    padding: const EdgeInsets.only(
                      right: 5,
                      bottom: 16.5,
                    ),
                    child: Text(
                      reposModel.author,
                      style: TextStyle(
                        color: Color(0xff8d8d98),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 16.5,
                  ),
                  child: Text(
                    publistTimeStr,
                    style: TextStyle(
                      color: Color(0xff8d8d98),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
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
}
