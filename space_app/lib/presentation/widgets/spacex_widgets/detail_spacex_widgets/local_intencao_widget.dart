import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../domain/entities/spacex_entitie.dart';
import 'dados_resposta_widget.dart';

class LocalIntencaoWidget extends StatelessWidget {
  const LocalIntencaoWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        spacex.launchDateUtc != null
            ? DadosRespostaWidget(
                texto:
                    'Mês: ${DateFormat('MMMM')
          .format(spacex.launchDateUtc!)}')
            : DadosRespostaWidget(texto: 'Mês: '),
        Spacer(),
        spacex.rocket!.firstStage!.cores!.first.landingType != null
            ? spacex.rocket!.firstStage!.cores!.first.landingIntent ==
                    true
                ? DadosRespostaWidget(texto: 'Intenção: Sim')
                : DadosRespostaWidget(texto: 'Intenção: Não')
            : DadosRespostaWidget(texto: 'Intenção: Indefinido')
      ],
    );
  }
}