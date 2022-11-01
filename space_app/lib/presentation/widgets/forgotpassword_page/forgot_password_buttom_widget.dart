import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'forgot_password_buttom.dart';

class ForgotPasswordButtomWidget extends StatelessWidget {
  const ForgotPasswordButtomWidget({
    Key? key,
    required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordButtom(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      buttomColor: MaterialStateProperty.all(Colors.deepPurple
          //.withOpacity(0.3),
          ),
      fontWeightText: FontWeight.bold,
      fontSizeText: 16,
      textColor: Colors.white,
      title: 'Resetar senha',
      onTap: () {
        FirebaseAuth.instance
            .sendPasswordResetEmail(email: _emailController.text)
            .then((value) => Navigator.of(context).pop());
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Verifique seu Email')),
        );
      },
      marginContainerButtom: EdgeInsets.fromLTRB(0, 8, 0, 8),
      heightContainerButtom: 55,
    );
  }
}
