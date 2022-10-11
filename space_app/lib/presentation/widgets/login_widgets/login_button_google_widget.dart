import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginButtonGoogleWidget extends StatelessWidget {
  const LoginButtonGoogleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
            width: MediaQuery.of(context).size.width * 0.9,

      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          primary: Colors.white,
          onPrimary: Colors.black,
          minimumSize: Size(
            double.infinity,
            50,
          ),
        ),
        //Google login
        onPressed: () {
          //  BlocProvider.of<AuthBloc>(context).add(
          // SignInGoogleRequested(),
        //);
        },
        icon: FaIcon(
          FontAwesomeIcons.google,
          color: Colors.deepPurple,
        ),
        label: Text(
          ' Entrar com Google',
          style: GoogleFonts.montserrat(
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}

