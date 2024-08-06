import 'package:flutter/material.dart';

class CustomBoxPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0;

    final Rect rect = offset & configuration.size!;
    canvas.drawRect(rect, paint);
  }
}
