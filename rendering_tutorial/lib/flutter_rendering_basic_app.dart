import 'package:flutter/material.dart';
import 'package:rendering_tutorial/flutter_rendering_set_state.dart';
import 'package:rendering_tutorial/flutter_rendering_stateless.dart';

enum RenderingResearches {
  stateless,
  setState,
}

class FlutterRenderingBasicApp extends StatelessWidget {
  const FlutterRenderingBasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: RenderingResearches.values.length,
          itemBuilder: (context, index) {
            return Card.outlined(
              child: ListTile(
                title: Text(RenderingResearches.values[index].toString()),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          switch (RenderingResearches.values[index]) {
                        RenderingResearches.stateless =>
                          const FlutterRenderingStateless(),
                        RenderingResearches.setState =>
                          FlutterRenderingSetState(
                            type: RenderingResearches.values[index],
                          ),
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
