import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/auth/auth_bloc.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController nomeController,
  }) : _formKey = formKey, _emailController = emailController, _passwordController = passwordController, _nomeController =nomeController, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final TextEditingController _nomeController;

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
                    _createAccountWithEmailAndPassword(context,_formKey, _emailController, _passwordController, _nomeController);
                    
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

 //method for validation the register in firebase data
  void _createAccountWithEmailAndPassword(context, formKey, emailController, passwordController, displayName) {
    if (formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(
        SignUpRequested(
          emailController.text,
          passwordController.text,
          displayName.text,
          
        ),
      );
    }
  

  }