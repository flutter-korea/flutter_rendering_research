import 'package:animation_tutorial/common.dart';
import 'package:flutter/material.dart';

class AnimationWithImplicitly extends StatefulWidget {
  const AnimationWithImplicitly({super.key});

  @override
  State<AnimationWithImplicitly> createState() =>
      _AnimationWithImplicitlyState();
}

class _AnimationWithImplicitlyState extends State<AnimationWithImplicitly> {
  double _length = 100;

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _length = 300;
      });
    });
  }

  _onEnd() {
    setState(() {
      if (_length == 300) {
        _length = 100;
      } else {
        _length = 300;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${AnimationType.implicitly}'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          width: _length,
          height: _length,
          color: Colors.blue,
          onEnd: _onEnd,
        ),
      ),
    );
  }
}
