import 'package:flutter/material.dart';
import '../../../../domain/entities/spacex_entitie.dart';
import 'dados_resposta_widget.dart';

class VooMassaWidget extends StatelessWidget {
  const VooMassaWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        spacex.rocket!.firstStage!.cores!.first.flight != null
            ? DadosRespostaWidget(
                texto:
                    'Voô: ${spacex.rocket!.firstStage!.cores!.first.flight}')
            : DadosRespostaWidget(texto: 'Voô:'),
        Spacer(),
        spacex.rocket!.secondStage!.payloads!.first.massReturnedKg !=
                null
            ? DadosRespostaWidget(
                texto:
                    'Massa (kg): ${spacex.rocket!.secondStage!.payloads!.first.massReturnedKg!}')
            : DadosRespostaWidget(texto: 'Massa (kg): ')
      ],
    );
  }
}