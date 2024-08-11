import 'package:flutter/material.dart';

class FlutterRenderingStateless extends StatelessWidget {
  const FlutterRenderingStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('StatelessWidget'),
      ),
    );
  }
}
