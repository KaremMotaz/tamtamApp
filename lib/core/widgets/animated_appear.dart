import 'package:flutter/material.dart';

class AnimatedAppear extends StatefulWidget {
  final Widget child;
  final double beginScale;
  final double endScale;
  final Duration duration;
  final Curve curve;
  final Duration delay;
  final bool fade;

  const AnimatedAppear({
    super.key,
    required this.child,
    this.beginScale = 0.2,
    this.endScale = 1.0,
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeOutBack,
    this.delay = const Duration(milliseconds: 800),
    this.fade = true,
  });

  @override
  State<AnimatedAppear> createState() => _AnimatedAppearState();
}

class _AnimatedAppearState extends State<AnimatedAppear>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration);

    _animation = CurvedAnimation(parent: _controller, curve: widget.curve);

    Future.delayed(widget.delay, () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: widget.fade
          ? FadeTransition(opacity: _animation, child: widget.child)
          : widget.child,
    );
  }
}
