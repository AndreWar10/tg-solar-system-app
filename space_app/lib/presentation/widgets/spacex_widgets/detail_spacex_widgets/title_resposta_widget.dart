import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 24,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
