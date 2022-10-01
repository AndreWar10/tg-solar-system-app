import 'package:flutter/material.dart';

class SpacexMissionSucessWidget extends StatelessWidget {
  const SpacexMissionSucessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Sucesso',
        style: TextStyle(
            fontSize: 16, color: Colors.grey));
  }
}