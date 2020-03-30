import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/base/base_bloc.dart';

/// 配合 /base/bloc/base_bloc.dart 中的 BaseBLoC 一起使用具备 dispose 能力的 BLoC
class BLoCProvider<T extends BaseBLoC> extends StatefulWidget {
  final T bloc;
  final Widget child;

  BLoCProvider({Key key, @required this.bloc, @required this.child})
      : super(key: key);

  @override
  _BLoCState createState() {
    return _BLoCState();
  }

  static T of<T extends BaseBLoC>(BuildContext context) {
    final type = _typeOf<BLoCProvider<T>>();
    BLoCProvider<T> provider = context.ancestorWidgetOfExactType(type);
    return provider.bloc;
  }

  static Type _typeOf<T>() => T;
}

class _BLoCState extends State<BLoCProvider> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    super.dispose();
    widget.bloc.dispose();
  }
}
