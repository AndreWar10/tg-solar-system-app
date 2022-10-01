import 'package:flutter/material.dart';

class SpacexMissionFailureWidget extends StatelessWidget {
  const SpacexMissionFailureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Falha',
        style: TextStyle(
            fontSize: 16,
            color: Colors.grey));
  }
}
