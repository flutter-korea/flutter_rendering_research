import 'package:animation_tutorial/common.dart';
import 'package:flutter/material.dart';

class AnimationWithTween extends StatefulWidget {
  const AnimationWithTween({super.key});

  @override
  State<AnimationWithTween> createState() => _AnimationWithTweenState();
}

class _AnimationWithTweenState extends State<AnimationWithTween>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation =
        Tween<double>(begin: 100, end: 300).animate(_animationController)
          ..addListener(
            () => setState(() {}),
          );
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
        title: Text('${AnimationType.tween}'),
      ),
      body: Center(
        child: Container(
          width: _animation.value,
          height: _animation.value,
          color: Colors.blue,
        ),
      ),
    );
  }
}
