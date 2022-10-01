import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../domain/entities/spacex_entitie.dart';

class ContainerBaixoWidget extends StatelessWidget {
  const ContainerBaixoWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(color: Color(0xFF1C1E1F)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            FogueteCargaUtilWidget(),
            SizedBox(height: 8),
            NomeFogueteCargaWidget(spacex: spacex),
            SizedBox(height: 8),
            BlocoFabWidget(spacex: spacex),
            SizedBox(height: 5),
            CodigoPaisWidget(spacex: spacex),
            SizedBox(height: 5),
            VooMassaWidget(spacex: spacex),
            SizedBox(height: 5),
            ReutilizavelOrbitaWidget(spacex: spacex),
            SizedBox(height: 20),
            LancamentoPousoTitleWidget(),
            SizedBox(height: 8),
            NomeLancamentoPousoWidget(spacex: spacex),
            SizedBox(height: 5),
            LocalTipoWidget(spacex: spacex),
            SizedBox(height: 5),
            LocalIntencaoWidget(spacex: spacex),
            SizedBox(height: 5),
            LocalSucessoWidget(spacex: spacex),
          ],
        ),
      ),
    );
  }
}

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
            : TitleRespostaWidget(resposta: '-'),
      ],
    );
  }
}

class LancamentoPousoTitleWidget extends StatelessWidget {
  const LancamentoPousoTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ContainerBaixoTitleWidget(titulo: 'LANÇAMENTO'),
        Spacer(),
        ContainerBaixoTitleWidget(titulo: 'POUSO'),
      ],
    );
  }
}

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

class BlocoFabWidget extends StatelessWidget {
  const BlocoFabWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        spacex.rocket!.secondStage!.block != null
            ? DadosRespostaWidget(
                texto: 'Bloco: ${spacex.rocket!.secondStage!.block}')
            : DadosRespostaWidget(texto: 'Bloco: '),
        Spacer(),
        spacex.rocket!.secondStage!.payloads!.first.customers != null
            ? Text(
              'Fab: ${spacex.rocket!.secondStage!.payloads!.first.customers!.first}',
              style: TextStyle(color: Colors.grey, fontSize: 18), 
             
            )
            : Text('Fab:'),
      ],
    );
  }
}

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

class FogueteCargaUtilWidget extends StatelessWidget {
  const FogueteCargaUtilWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ContainerBaixoTitleWidget(titulo: 'FOGUETE'),
        Spacer(),
        ContainerBaixoTitleWidget(titulo: 'CARGA ÚTIL'),
      ],
    );
  }
}

class DadosRespostaWidget extends StatelessWidget {
  const DadosRespostaWidget({
    Key? key,
    required this.texto,
  }) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(color: Colors.grey, fontSize: 18),
      maxLines: 1,
    );
  }
}

class TitleRespostaWidget extends StatelessWidget {
  const TitleRespostaWidget({
    Key? key,
    required this.resposta,
  }) : super(key: key);

  final String resposta;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        resposta,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class ContainerBaixoTitleWidget extends StatelessWidget {
  const ContainerBaixoTitleWidget({
    Key? key,
    required this.titulo,
  }) : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: TextStyle(
        color: Colors.deepPurpleAccent,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
    );
  }
}
