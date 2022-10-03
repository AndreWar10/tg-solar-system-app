import 'package:flutter/material.dart';
import '../../../../domain/entities/spacex_entitie.dart';
import 'title_resposta_widget.dart';

class NomeLancamentoPousoWidget extends StatelessWidget {
  const NomeLancamentoPousoWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        spacex.rocket!.rocketName != null
            ? TitleRespostaWidget(resposta: spacex.rocket!.rocketName!)
            : TitleRespostaWidget(resposta: 'erere'),
       Spacer(),
        spacex.rocket!.firstStage!.cores!.first.landingVehicle != null
            ? TitleRespostaWidget(
                resposta: spacex
                    .rocket!.firstStage!.cores!.first.landingVehicle!)
            : TitleRespostaWidget(resposta: spacex.rocket!.rocketName!),
      ],
    );
  }
}