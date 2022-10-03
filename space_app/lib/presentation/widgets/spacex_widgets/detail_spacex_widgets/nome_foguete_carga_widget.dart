import 'package:flutter/material.dart';
import '../../../../domain/entities/spacex_entitie.dart';
import 'title_resposta_widget.dart';

class NomeFogueteCargaWidget extends StatelessWidget {
  const NomeFogueteCargaWidget({
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
            : TitleRespostaWidget(resposta: ''),
        Spacer(),
        spacex.missionName != null
            ? TitleRespostaWidget(resposta: spacex.missionName!)
            : TitleRespostaWidget(resposta: ''),
      ],
    );
  }
}
