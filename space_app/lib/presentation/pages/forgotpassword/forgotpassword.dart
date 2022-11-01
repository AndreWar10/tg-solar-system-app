import 'package:flutter/material.dart';

import '../../widgets/forgotpassword_page/forgot_bloc_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text('Recuperar Senha')),
      body: ForgotBlocWidget(emailController: _emailController),
    );
  }

  
}


