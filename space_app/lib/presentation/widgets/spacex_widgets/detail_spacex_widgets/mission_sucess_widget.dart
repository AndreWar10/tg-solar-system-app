import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../domain/entities/spacex_entitie.dart';

class MissionSucessWidget extends StatelessWidget {
  const MissionSucessWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 90),
      child: Center(
        child: spacex.launchSuccess == true
            ? Positioned(
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Color(0xFF1C1E1F),
                      //color: Colors.green,
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Sucesso',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            : Positioned(
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Color(0xFF1C1E1F),
                      //color: Colors.red,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Falha',
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
