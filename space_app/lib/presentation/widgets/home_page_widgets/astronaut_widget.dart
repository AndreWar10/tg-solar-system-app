import 'package:flutter/material.dart';

class HomeAstronautWidget extends StatefulWidget {
  const HomeAstronautWidget({Key? key}) : super(key: key);

  @override
  State<HomeAstronautWidget> createState() => _HomeAstronautWidgetState();
}

class _HomeAstronautWidgetState extends State<HomeAstronautWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 6),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: Offset(0.2, 0.0),
//easeOutQuint
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutQuint
));

//easeOutQuint
//bounceIn

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0),
      child: SlideTransition(
        position: _animation,
        child: Image.asset(
        "assets/astronauta/astronauta-home.png",
        width: 190,
        height: 190,
      ),
      ),
    );
  }
}