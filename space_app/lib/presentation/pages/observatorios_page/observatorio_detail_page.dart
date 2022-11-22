import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/models/observatorios_model.dart';

class ObservatorioDetailPage extends StatelessWidget {
  const ObservatorioDetailPage({Key? key, required this.observatorio})
      : super(key: key);

  final Observatorios observatorio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(observatorio.name,
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold)),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              child: Image.asset(observatorio.image),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                observatorio.name,
                style: GoogleFonts.montserrat(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                observatorio.resumo, style: GoogleFonts.montserrat(),
                //'Observatório Astronômico Municipal “Dr. Thomaz Novelino”, tem  como objetivo demonstrar a ciência de maneira prática e divertida,   e desenvolver atividades, aulas informativas, palestras, para  alunos e comunidade. Existem roteiros adequados para cada faixa etária, desde o ensino infantil até o ensino médio.',
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    'Telefone: ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    observatorio.telefone,
                    style: GoogleFonts.montserrat(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    'Endereço: ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                  ),
                  Flexible(
                      child: Text(
                    observatorio.endereco,
                    style: GoogleFonts.montserrat(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    'Estado: ',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    observatorio.estado,
                    style: GoogleFonts.montserrat(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text('Site Oficial:',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse(observatorio.site!);
                    await launchUrl(url);
                  },
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          '${observatorio.site}',
                          style: GoogleFonts.montserrat(
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 25),
            
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse(observatorio.maps);
                    await launchUrl(url);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.link,
                        color: Colors.deepPurpleAccent,
                      ),
                      Text(
                        ' Ver no Google Maps',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                var urlPreview = observatorio.maps;
                await Share.share('${observatorio.name}\n\n$urlPreview');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.deepPurpleAccent,
                      size: 20,
                    ),
                    Text(
                      ' Compartilhar Observatório',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
