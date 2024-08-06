import 'package:flutter/material.dart';
import 'package:painting_tutorial/custom_box_decoration.dart';

class PaintingBasicApp extends StatelessWidget {
  const PaintingBasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Canvas Tutorial - Draw Rect by CustomDecoration'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: const CustomBoxDecoration(),
          ),
        ),
      ),
    );
  }
}
