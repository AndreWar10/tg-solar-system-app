import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpacexMissionFailureWidget extends StatelessWidget {
  const SpacexMissionFailureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Falha',
        style: GoogleFonts.montserrat(
            fontSize: 16,
            color: Colors.grey));
  }
}
