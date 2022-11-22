import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/models/observatorios_model.dart';
import '../../pages/observatorios_page/observatorio_detail_page.dart';

class ItemObservatorioWidget extends StatelessWidget {
  const ItemObservatorioWidget({Key? key, required this.observatorio})
      : super(key: key);

  final Observatorios observatorio;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => ObservatorioDetailPage(observatorio: observatorio)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Container(
              //height: 120,
              //width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.asset(observatorio.image),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      observatorio.name,
                      style: GoogleFonts.montserrat(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Text(observatorio.estado,
                            style: GoogleFonts.montserrat(
                                color: Colors.grey.shade500, fontSize: 16)),
                        Spacer(),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ObservatorioDetailPage(
                                    observatorio: observatorio)),
                          ),
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Saiba mais',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),

                          // Container(
                          //     height: 28,
                          //     width: 85,
                          //     decoration: BoxDecoration(
                          //         color: Colors.deepPurpleAccent,
                          //         borderRadius: BorderRadius.circular(30)),
                          //     child: Center(
                          //         child: Text(
                          //       'Saiba Mais',
                          //       style: GoogleFonts.montserrat(color: Colors.white),
                          //     ))
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
