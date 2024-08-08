import 'package:animation_tutorial/common.dart';
import 'package:flutter/material.dart';

class AnimationWithExplicitly extends StatefulWidget {
  const AnimationWithExplicitly({super.key});

  @override
  State<AnimationWithExplicitly> createState() =>
      _AnimationWithExplicitlyState();
}

class _AnimationWithExplicitlyState extends State<AnimationWithExplicitly>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${AnimationType.explicitly}'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Container(
              width: 100 + _animationController.value * 200,
              height: 100 + _animationController.value * 200,
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
