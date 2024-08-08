import 'package:animation_tutorial/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimationWithSetState extends StatefulWidget {
  const AnimationWithSetState({super.key});

  @override
  State<AnimationWithSetState> createState() => _AnimationWithSetStateState();
}

class _AnimationWithSetStateState extends State<AnimationWithSetState> {
  double _length = 100;
  double _offset = 1;
  late Ticker _ticker;
  @override
  void initState() {
    super.initState();
    _ticker = Ticker(_onTick)..start();
  }

  @override
  void dispose() {
    _ticker.stop();
    _ticker.dispose();
    super.dispose();
  }

  _onTick(Duration elapsed) {
    setState(() {
      if (_length > 300 || _length < 100) {
        _offset = -_offset;
      }
      _length = _length + _offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${AnimationType.setState}'),
      ),
      body: Center(
        child: Container(
          width: _length,
          height: _length,
          color: Colors.blue,
        ),
      ),
    );
  }
}
