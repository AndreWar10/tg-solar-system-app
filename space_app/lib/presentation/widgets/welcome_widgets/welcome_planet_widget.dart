import 'package:flutter/material.dart';

class WelcomePlanetWidget extends StatelessWidget {
  const WelcomePlanetWidget({
    Key? key,
  }) : super(key: key);

  final String _defaultImage = "assets/background/planeta.png";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 220, top: 150),
      child: Image.asset(_defaultImage, width: 100, height: 100),
    );
  }
}
