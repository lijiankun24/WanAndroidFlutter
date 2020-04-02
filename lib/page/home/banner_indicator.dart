import 'package:flutter/material.dart';
import 'package:flukit/flukit.dart';

class BannerIndicator extends SwiperIndicator {
  @override
  Widget build(BuildContext context, int index, int itemCount) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: const EdgeInsets.only(
        right: 5.0,
        bottom: 10.0,
      ),
      padding: const EdgeInsets.only(
        left: 5.0,
        top: 1.0,
        right: 5.0,
        bottom: 1.0,
      ),
      child: Text(
        '${++index}/$itemCount',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
