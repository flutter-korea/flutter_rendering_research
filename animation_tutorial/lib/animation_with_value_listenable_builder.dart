import 'package:animation_tutorial/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimationWithValueListenableBuilder extends StatefulWidget {
  const AnimationWithValueListenableBuilder({super.key});

  @override
  State<AnimationWithValueListenableBuilder> createState() =>
      _AnimationWithValueListenableBuilderState();
}

class _AnimationWithValueListenableBuilderState
    extends State<AnimationWithValueListenableBuilder>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<double> _length = ValueNotifier<double>(100);
  late Ticker _ticker;
  double _offset = 1;

  @override
  initState() {
    super.initState();
    _ticker = Ticker(_onTick)..start();
  }

  _onTick(Duration elapsed) {
    if (_length.value > 300 || _length.value < 100) {
      _offset = -_offset;
    }
    _length.value = _length.value + _offset;
  }

  @override
  void dispose() {
    _ticker.stop();
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${AnimationType.valueListenableBuilder}'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _length,
          builder: (BuildContext context, double value, Widget? child) {
            return Container(
              width: value,
              height: value,
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
