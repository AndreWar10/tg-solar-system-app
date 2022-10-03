import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpacexMissionSucessWidget extends StatelessWidget {
  const SpacexMissionSucessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Sucesso',
        style: GoogleFonts.montserrat(
            fontSize: 16, color: Colors.grey));
  }
}