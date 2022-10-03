import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/models/observatorios_model.dart';
import '../../widgets/observatorios_widgets/observatorio_item_widget.dart';

class ObservatoriosPage extends StatelessWidget {
  const ObservatoriosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Observatorios> observatorios = [
      ObservatoriosList.franca,
      ObservatoriosList.ufop,
      ObservatoriosList.uspsp,
      ObservatoriosList.uspsc,
      ObservatoriosList.pucrs,
      ObservatoriosList.nacional,
      ObservatoriosList.alagoas,
      ObservatoriosList.antares,
      ObservatoriosList.uesc,
      ObservatoriosList.radio,
      ObservatoriosList.otto,
      ObservatoriosList.luiz,
      ObservatoriosList.ufes,
      ObservatoriosList.ufmg,
      ObservatoriosList.campomagro,
      ObservatoriosList.recife,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Observatórios Astronômicos',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/background/background50.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: observatorios.length,
                itemBuilder: (BuildContext context, int index) =>
                    ItemObservatorioWidget(observatorio: observatorios[index]),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
