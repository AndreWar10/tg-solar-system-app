import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/auth/auth_bloc.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key? key,
   required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;


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
          _authenticateWithEmailAndPassword(
              context, _formKey, _emailController, _passwordController);
          // if (controller.validate()) {
          //   controller.login();
          // } else {
          //   // ignore: avoid_print
          //   print('erro');
          // }
          //Navigator.of(context).pushReplacementNamed('/home');
          
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

void _authenticateWithEmailAndPassword(
    context, formKey, emailController, passwordController) {
  if (formKey.currentState!.validate()) {
    BlocProvider.of<AuthBloc>(context).add(
      SignInRequested(emailController.text, passwordController.text),
    );
  }
}