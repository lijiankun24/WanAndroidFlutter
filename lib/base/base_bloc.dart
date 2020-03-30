/// 抽象的 BaseBLoC 基类，拥有 dispose 的能力
/// 配合 /base/bloc/bloc_provider.dart 中的 BLoCProvider<T extends BaseBLoC> 使用
abstract class BaseBLoC {
  void dispose();
}
