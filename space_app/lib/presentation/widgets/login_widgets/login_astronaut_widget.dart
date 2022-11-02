import 'package:flutter/material.dart';

class LoginAstronautWidget extends StatelessWidget {
  const LoginAstronautWidget({
    Key? key,
  }) : super(key: key);

  final String _defaultLoginAstronaut = "assets/astronauta/pc.png";

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _defaultLoginAstronaut,
      width: 200,
      height: 200,
    );
  }
}
