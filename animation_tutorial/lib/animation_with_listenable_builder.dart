import 'package:animation_tutorial/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimationWithValuelistenable extends StatefulWidget {
  const AnimationWithValuelistenable({super.key});

  @override
  State<AnimationWithValuelistenable> createState() =>
      _AnimationWithValuelistenableState();
}

class _AnimationWithValuelistenableState
    extends State<AnimationWithValuelistenable>
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
        title: Text('${AnimationType.listenableBuilder}'),
      ),
      body: Center(
        child: ListenableBuilder(
          listenable: _length,
          builder: (context, child) {
            return Container(
              width: _length.value,
              height: _length.value,
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
