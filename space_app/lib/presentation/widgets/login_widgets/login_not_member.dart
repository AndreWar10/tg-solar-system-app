import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginNotMemberWidget extends StatelessWidget {
  const LoginNotMemberWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Not a member?',
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            child: Text(
              'Register Now',
              style: GoogleFonts.montserrat(
                fontSize: 14,
              ),
            ),
            onPressed: () => Navigator.of(context).pushNamed('/register'),            
          ),
        ],
      ),
    );
  }
}