import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterSubtitleWidget extends StatelessWidget {
  const RegisterSubtitleWidget({
    Key? key,
  }) : super(key: key);

  final String _defaultSubtitle = "Bem-vindo, vou criar sua conta";

  @override
  Widget build(BuildContext context) {
    return Text(
      _defaultSubtitle,
      style: GoogleFonts.montserrat(
        fontSize: 16,
      ),
    );
  }
}