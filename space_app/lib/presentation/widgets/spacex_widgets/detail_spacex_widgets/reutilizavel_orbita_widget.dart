import 'package:flutter/material.dart';
import '../../../../domain/entities/spacex_entitie.dart';
import 'dados_resposta_widget.dart';

class ReutilizavelOrbitaWidget extends StatelessWidget {
  const ReutilizavelOrbitaWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        spacex.rocket!.firstStage!.cores!.first.reused != null
            ? spacex.rocket!.firstStage!.cores!.first.reused == true
                ? DadosRespostaWidget(texto: 'Reutilizável: Sim')
                : DadosRespostaWidget(texto: 'Reutilizável: Não')
            : DadosRespostaWidget(texto: 'Reutilizável: '),
        Spacer(),
        spacex.rocket!.secondStage!.payloads!.first.payloadType != null
            ? DadosRespostaWidget(
                texto:
                    'Tipo: ${spacex.rocket!.secondStage!.payloads!.first.payloadType!}')
            : DadosRespostaWidget(texto: 'Tipo: ')
      ],
    );
  }
}