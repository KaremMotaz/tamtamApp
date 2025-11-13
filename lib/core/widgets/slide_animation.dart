import 'package:flutter/material.dart';

class SlideAnimation extends StatelessWidget {
  final Widget child;
  final double begin;
  final double end;
  final Duration duration;
  final Curve curve;
  final Axis axis;

  const SlideAnimation({
    super.key,
    required this.child,
    this.begin = -50,
    this.end = 0,
    this.duration = const Duration(milliseconds: 800),
    this.curve = Curves.easeOut,
    this.axis = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: begin, end: end),
      duration: duration,
      curve: curve,
      builder: (context, value, child) {
        return Transform.translate(
          offset: axis == Axis.vertical ? Offset(0, value) : Offset(value, 0),
          child: child,
        );
      },
      child: child,
    );
  }
}
