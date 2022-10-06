import 'package:flutter/material.dart';

class WelcomeAstronautWidget extends StatefulWidget {
  const WelcomeAstronautWidget({Key? key}) : super(key: key);

  @override
  State<WelcomeAstronautWidget> createState() => _WelcomeAstronautWidgetState();
}

class _WelcomeAstronautWidgetState extends State<WelcomeAstronautWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.09),
  ).animate(_controller);

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  final String _defaultImageAstronaut = "assets/background/astronauta.png";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60),
      child: SlideTransition(
        position: _animation,
        child: Image.asset(_defaultImageAstronaut, width: 300, height: 300),
      ),
    );
  }
}
