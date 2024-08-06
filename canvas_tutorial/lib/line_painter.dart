import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final List<Offset> points;
  final Paint linePaint;

  const LinePainter({
    required this.points,
    required this.linePaint,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (points.length < 2) {
      return;
    }
    for (int i = 1; i < points.length; i++) {
      canvas.drawLine(
        points[i - 1],
        points[i],
        linePaint,
      );
    }
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => true;
}
