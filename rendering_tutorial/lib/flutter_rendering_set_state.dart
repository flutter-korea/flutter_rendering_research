import 'package:flutter/material.dart';
import 'package:rendering_tutorial/flutter_rendering_basic_app.dart';

class FlutterRenderingSetState extends StatefulWidget {
  final RenderingResearches type;
  const FlutterRenderingSetState({
    super.key,
    required this.type,
  });

  @override
  State<FlutterRenderingSetState> createState() =>
      _FlutterRenderingSetStateState();
}

class _FlutterRenderingSetStateState extends State<FlutterRenderingSetState> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.type.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
