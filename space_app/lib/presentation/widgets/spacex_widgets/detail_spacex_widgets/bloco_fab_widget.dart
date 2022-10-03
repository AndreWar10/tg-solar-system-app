import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../domain/entities/spacex_entitie.dart';
import 'dados_resposta_widget.dart';

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
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 16), maxLines: 1,
            //overflow: TextOverflow.ellipsis,
             
            )
            : Text('Fab:'),
      ],
    );
  }
}
