import 'package:flutter/material.dart';
import '../../../../../domain/entities/spacex_entitie.dart';
import '../bloco_fab_widget.dart';
import '../codigo_pais_widget.dart';
import '../foguete_carga_util.dart';
import '../lancamento_pouso_title_widget.dart';
import '../local_intencao_widget.dart';
import '../local_sucesso_widget.dart';
import '../local_tipo_widget.dart';
import '../nome_foguete_carga_widget.dart';
import '../nome_lancamento_pouso_widget.dart';
import '../reutilizavel_orbita_widget.dart';
import '../voo_massa_widget.dart';

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
