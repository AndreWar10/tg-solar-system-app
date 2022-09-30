import 'package:flutter/material.dart';

import '../../../../domain/entities/solar_system_entitie.dart';
import 'detail_foto_widget.dart';

class DetailCabecalhoWidget extends StatelessWidget {
  const DetailCabecalhoWidget({Key? key, required this.planet})
      : super(key: key);
  final SystemSolarEntitie planet;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [planet.baseColor!, planet.baseColor2!],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 360,
              width: double.infinity,
              child: DetailFotoListWidget(planet: planet),
            ),
          ],
        ),
      ),
    );
  }
}
