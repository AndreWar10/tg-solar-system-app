import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginOrTextWidget extends StatelessWidget {
  const LoginOrTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        'Or ',
        style: GoogleFonts.montserrat(
          fontSize: 12,
        ),
      ),
    );
  }
}