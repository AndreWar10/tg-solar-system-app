import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterBackToLoginWidget extends StatelessWidget {
  const RegisterBackToLoginWidget({
    Key? key,
  }) : super(key: key);

  final String _defaultRoute = "/login";
  final String _defaultText1 = "Já possui conta? ";
  final String _defaultText2 = "Fazer Login";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _defaultText1,
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(_defaultRoute),
            child: Text(
              _defaultText2,
              style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
          ),
        ],
      ),
    );
  }
}
