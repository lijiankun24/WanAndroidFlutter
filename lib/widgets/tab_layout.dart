import 'package:wanandroid_flutter/common/common_import.dart';
import 'package:wanandroid_flutter/data/repos/repos_cat_model.dart';
import 'package:wanandroid_flutter/data/wx_article/wx_article_cat_model.dart';

class TabLayout<T> extends StatelessWidget {
  final List<T> reposCatModelList;
  final ValueChanged<T> valueChanged;

  TabLayout(this.reposCatModelList, this.valueChanged);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabs: reposCatModelList.map((reposCatModel) {
        return Tab(
          text: getCatName(reposCatModel),
        );
      }).toList(),
      onTap: (reposCatIndex) => valueChanged(reposCatModelList[reposCatIndex]),
    );
  }

  String getCatName(T catModel) {
    if (catModel is ReposCatModel) {
      return catModel.name;
    } else if (catModel is WxArticleCatModel) {
      return catModel.name;
    }
    return "";
  }
}
