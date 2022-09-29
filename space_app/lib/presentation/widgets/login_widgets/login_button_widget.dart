import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          primary: Colors.deepPurple,
          onPrimary: Colors.black,
          minimumSize: Size(
            double.infinity,
            50,
          ),
        ),
        onPressed: () {
          // if (controller.validate()) {
          //   controller.login();
          // } else {
          //   // ignore: avoid_print
          //   print('erro');
          // }
        },
        child: Text(
          ' Login',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}