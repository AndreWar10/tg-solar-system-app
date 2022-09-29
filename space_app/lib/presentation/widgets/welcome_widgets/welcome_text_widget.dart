import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "Vamos explorar a galáxia?",
          style: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      );
  }
}
