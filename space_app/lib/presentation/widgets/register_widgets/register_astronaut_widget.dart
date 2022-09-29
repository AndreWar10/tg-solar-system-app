import 'package:flutter/material.dart';

class RegisterAstronautWidget extends StatelessWidget {
  const RegisterAstronautWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/astronauta/cadastro.png',
      width: 180,
      height: 180,
    );
  }
}
