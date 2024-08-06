import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  List<Offset> points;

  LinePainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    if (points.length >= 2) {
      final paint = Paint()
        ..color = Colors.black
        ..strokeWidth = 3.0;

      for (int i = 1; i < points.length; i++) {
        canvas.drawLine(points[i - 1], points[i], paint);
      }
    }
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => true;
}
