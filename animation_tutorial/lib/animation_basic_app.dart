import 'package:animation_tutorial/animation_with_explicitly.dart';
import 'package:animation_tutorial/animation_with_implicitly.dart';
import 'package:animation_tutorial/animation_with_set_state.dart';
import 'package:animation_tutorial/animation_with_tween.dart';
import 'package:animation_tutorial/common.dart';
import 'package:flutter/material.dart';

class AnimationBasicApp extends StatelessWidget {
  const AnimationBasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Basic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: AnimationType.values.length,
            itemBuilder: (context, index) {
              final animationType = AnimationType.values[index];
              return Card.outlined(
                child: ListTile(
                  title: Text(animationType.toString()),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => switch (animationType) {
                          AnimationType.setState =>
                            const AnimationWithSetState(),
                          AnimationType.implicitly =>
                            const AnimationWithImplicitly(),
                          AnimationType.explicitly =>
                            const AnimationWithExplicitly(),
                          AnimationType.tween => const AnimationWithTween(),
                        },
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
