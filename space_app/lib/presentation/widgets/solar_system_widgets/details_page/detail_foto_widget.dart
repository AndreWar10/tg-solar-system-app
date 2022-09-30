import 'package:flutter/material.dart';

import '../../../../domain/entities/solar_system_entitie.dart';

class DetailFotoListWidget extends StatelessWidget {
  const DetailFotoListWidget({Key? key, required this.planet})
      : super(key: key);
  final SystemSolarEntitie planet;

  @override
  Widget build(BuildContext context) {
    final String planeta = planet.name;

    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/planets/$planeta.png',
        height: 280,
      ),
    );
  }
}
