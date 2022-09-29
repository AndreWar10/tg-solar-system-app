import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterTitleWidget extends StatelessWidget {
  const RegisterTitleWidget({
    Key? key,
  }) : super(key: key);

  final String _defaultTitle = 'Me cadastrar';

  @override
  Widget build(BuildContext context) {
    return Text(
      _defaultTitle,
      style: GoogleFonts.montserrat(
        fontSize: 46,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}