import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginNotMemberWidget extends StatelessWidget {
  const LoginNotMemberWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ainda não tem conta? ',
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/register'),
            child: Text(
              'Cadastrar-se',
              style: GoogleFonts.montserrat(
                fontSize: 13, fontWeight: FontWeight.bold, color: Colors.deepPurple
              ),
            ),
          ),
        ],
      ),
    );
  }
}