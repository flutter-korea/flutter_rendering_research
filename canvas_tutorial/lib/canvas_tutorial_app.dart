import 'package:canvas_tutorial/line_painter.dart';
import 'package:flutter/material.dart';

class CanvasTutorialApp extends StatefulWidget {
  const CanvasTutorialApp({super.key});

  @override
  State createState() => _CanvasTutorialAppState();
}

class _CanvasTutorialAppState extends State<CanvasTutorialApp> {
  final List<Offset> _points = [];

  void _addPoint(Offset point) {
    setState(() {
      _points.add(point);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Canvas Tutorial - Draw Lines by Tapping'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _points.clear();
            });
          },
          child: const Icon(Icons.clear),
        ),
        body: GestureDetector(
          onTapDown: (TapDownDetails details) {
            _addPoint(details.localPosition);
          },
          child: CustomPaint(
            painter: LinePainter(points: _points),
            child: Container(),
          ),
        ),
      ),
    );
  }
}
