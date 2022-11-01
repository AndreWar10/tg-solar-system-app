import 'package:flutter/material.dart';

import 'field_forgot_password_widget.dart';
import 'forgot_password_buttom_widget.dart';

class ForgotBlocWidget extends StatelessWidget {
  const ForgotBlocWidget({
    Key? key,
    required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background/background100.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
            child: Form(
              child: Column(
                children: <Widget>[
                  Image.asset("assets/astronauta/cadastro.png",
                      width: 300, height: 300),
                  //SizedBox(height: 80),
                  FieldForgotPasswordWidget(emailController: _emailController),
                  SizedBox(height: 16),
                  ForgotPasswordButtomWidget(emailController: _emailController)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
