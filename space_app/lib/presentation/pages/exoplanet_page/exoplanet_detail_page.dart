import 'package:flutter/material.dart';

import '../../../domain/entities/exoplanet_entitie.dart';

class DetailExoplanetPage extends StatelessWidget {
  const DetailExoplanetPage({Key? key, required this.exoplanet})
      : super(key: key);

  final ExoplanetEntitie exoplanet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exoplanet.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Estrela: ${exoplanet.star}'),
            Text('Densidade: ${exoplanet.density}'),
            Text('Massa: ${exoplanet.mass}'),
            Text('Periodo Orbital: ${exoplanet.orbitalPeriod}'),
            Text('Raio: ${exoplanet.radius}'),
            Text('SemiMajorAxis: ${exoplanet.semiMajorAxis}'),
            Text('V: ${exoplanet.v}'),
            exoplanet.habitability == true
                ? Text('Habitável? Sim')
                : Text('Habitável? Não'),
          ],
        ),
      ),
    );
  }
}
