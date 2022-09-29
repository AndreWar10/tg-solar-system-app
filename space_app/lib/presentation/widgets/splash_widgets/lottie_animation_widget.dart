import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationWidget extends StatelessWidget {
  const LottieAnimationWidget({
    Key? key,
  }) : super(key: key);

  final String _animation = "assets/lottie.json";
  final String _background = "assets/background/background100.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_background),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Lottie.asset(_animation),
        ),
      ),
    );
  }
}
