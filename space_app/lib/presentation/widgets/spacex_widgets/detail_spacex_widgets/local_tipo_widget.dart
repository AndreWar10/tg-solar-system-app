import 'package:flutter/material.dart';
import '../../../../domain/entities/spacex_entitie.dart';
import 'dados_resposta_widget.dart';

class LocalTipoWidget extends StatelessWidget {
  const LocalTipoWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        spacex.launchYear != null
            ? DadosRespostaWidget(
                texto:
                    'Ano: ${spacex.launchYear}')
            : DadosRespostaWidget(texto: 'Ano: '),
        Spacer(),
        spacex.rocket!.firstStage!.cores!.first.landingType != null
            ? DadosRespostaWidget(
                texto:
                    'Tipo: ${spacex.rocket!.firstStage!.cores!.first.landingType!}')
            : DadosRespostaWidget(texto: 'Tipo: ')
      ],
    );
  }
}