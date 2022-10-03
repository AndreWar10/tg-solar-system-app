import 'package:flutter/material.dart';
import '../../../../domain/entities/spacex_entitie.dart';
import 'dados_resposta_widget.dart';

class LocalSucessoWidget extends StatelessWidget {
  const LocalSucessoWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        spacex.rocket!.secondStage!.payloads!.first.orbit != null
            ? DadosRespostaWidget(
                texto:
                    'Órbita: ${spacex.rocket!.secondStage!.payloads!.first.orbit!}')
            : DadosRespostaWidget(texto: 'Órbita:'),
        Spacer(),
        spacex.launchSuccess != null
            ? spacex.launchSuccess == true
                ? DadosRespostaWidget(texto: 'Sucesso: Sim')
                : DadosRespostaWidget(texto: 'Sucesso: Não')
            : DadosRespostaWidget(texto: 'Sucesso: Sim')
      ],
    );
  }
}