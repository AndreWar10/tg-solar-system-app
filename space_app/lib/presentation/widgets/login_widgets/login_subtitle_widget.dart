import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSubtitleWidget extends StatelessWidget {
  const LoginSubtitleWidget({
    Key? key,
  }) : super(key: key);

  final String _defaultSubtitle = "Bem-Vindo de volta, senti sua falta!";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text(
        _defaultSubtitle,
        style: GoogleFonts.montserrat(
          fontSize: 16,
        ),
      ),
    );
  }
}