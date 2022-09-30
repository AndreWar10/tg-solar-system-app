import 'package:flutter/material.dart';

class DetailSeparationWidget extends StatelessWidget {
  const DetailSeparationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '__________',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black54),
    );
  }
}