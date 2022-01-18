import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import 'package:flutter/material.dart';

class FadeTransitionDemo extends StatefulWidget {
  _FadeTransitionDemoState createState() => _FadeTransitionDemoState();
}

class _FadeTransitionDemoState extends State<FadeTransitionDemo>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animationer;

  initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);
    animationer = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
