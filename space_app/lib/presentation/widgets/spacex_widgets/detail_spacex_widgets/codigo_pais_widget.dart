import 'package:flutter/material.dart';
import '../../../../domain/entities/spacex_entitie.dart';
import 'dados_resposta_widget.dart';

class CodigoPaisWidget extends StatelessWidget {
  const CodigoPaisWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        spacex.rocket!.firstStage!.cores!.first.coreSerial != null
            ? DadosRespostaWidget(
                texto:
                    'Código: ${spacex.rocket!.firstStage!.cores!.first.coreSerial!}')
            : DadosRespostaWidget(texto: 'Código: '),
        Spacer(),
        spacex.rocket!.secondStage!.payloads!.first.nationality != null
            ? DadosRespostaWidget(
                texto:
                    'País: ${spacex.rocket!.secondStage!.payloads!.first.nationality!}')
            : DadosRespostaWidget(texto: 'País: ')
      ],
    );
  }
}