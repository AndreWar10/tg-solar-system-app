import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        height: 75,
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
            // FirebaseAuth.instance
            //     .createUserWithEmailAndPassword(
            //         email: _emailTextController.text,
            //         password: _senhaTextController.text)
            //     .then((value) {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => LoginPage()));
            // }).onError((error, stackTrace) {
            //   // ignore: avoid_print
            //   print('Error ${error.toString()}');
            // });
          },
          child: Text(
            ' Continuar',
            style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}