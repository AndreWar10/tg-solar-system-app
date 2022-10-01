
import 'package:flutter/material.dart';

import '../../../domain/entities/spacex_entitie.dart';

class SpacexMissionNameWidget extends StatelessWidget {
  const SpacexMissionNameWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: 
      Text(
        spacex.missionName!,
        style: TextStyle(
            fontSize: 22, color: Colors.white),
        maxLines: 1,
      ),
    );
  }
}