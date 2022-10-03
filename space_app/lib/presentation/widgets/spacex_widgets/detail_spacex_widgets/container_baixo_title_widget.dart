import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerBaixoTitleWidget extends StatelessWidget {
  const ContainerBaixoTitleWidget({
    Key? key,
    required this.titulo,
  }) : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: GoogleFonts.montserrat(
        color: Colors.deepPurpleAccent,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
    );
  }
}
