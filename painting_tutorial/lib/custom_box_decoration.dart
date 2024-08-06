import 'package:flutter/painting.dart';
import 'package:painting_tutorial/custom_box_painter.dart';

class CustomBoxDecoration extends Decoration {
  const CustomBoxDecoration();

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CustomBoxPainter();
  }
}
