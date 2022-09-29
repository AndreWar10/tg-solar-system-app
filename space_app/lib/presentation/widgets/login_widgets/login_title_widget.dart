import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTitleWidget extends StatelessWidget {
  const LoginTitleWidget({
    Key? key,
  }) : super(key: key);

  final String _defaulTitle = "Fazer login";

  @override
  Widget build(BuildContext context) {
    return Text(
      _defaulTitle,
      style: GoogleFonts.montserrat(
        fontSize: 46,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}