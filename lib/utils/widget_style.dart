import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  Widget withPadding({double? all, double? left, double? top, double? right,
    double? bottom}) {
    EdgeInsets? padding;


    if (all != null) {
      padding = EdgeInsets.all(all);
    }
    else if (left != null || top != null || right != null || bottom != null) {
      padding = EdgeInsets.only(
        left: left ?? 0,
        top: top ?? 0,
        right: right ?? 0,
        bottom: bottom ?? 0,
      );
    } else {
      throw ArgumentError("No arguments provided.");
    }

    return Padding(
        padding: padding,
        child: this
    );
  }
}