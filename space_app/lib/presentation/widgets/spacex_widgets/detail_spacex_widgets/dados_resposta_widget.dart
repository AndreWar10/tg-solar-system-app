import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 16),
      maxLines: 1,
    );
  }
}
