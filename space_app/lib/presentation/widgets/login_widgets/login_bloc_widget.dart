import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/auth/auth_bloc.dart';
import 'custom_text_form_field.dart';
import 'login_astronaut_widget.dart';
import 'login_button_widget.dart';
import 'login_not_member.dart';
import 'login_or_widget.dart';
import 'login_remember_widget.dart';
import 'login_subtitle_widget.dart';
import 'login_title_widget.dart';

class LoginBlocWidget extends StatelessWidget {
  const LoginBlocWidget({
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
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is Loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UnAuthenticated) {
          return SingleChildScrollView(
            reverse: true,
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 50),
                    //Imagem Astronauta
                    LoginAstronautWidget(),
                    //Titulo da page
                    LoginTitleWidget(),
                    //Subtitulo da page
                    LoginSubtitleWidget(),
                    SizedBox(height: 50),
                    //Email
                    CustomTextFormFieldWidget(
                      isPass: false,
                      hintText: 'Email',
                      controller: _emailController,
                    ),
                    SizedBox(height: 15),
                    //Senha
                    CustomTextFormFieldWidget(
                      isPass: true,
                      hintText: 'Senha',
                      controller: _passwordController,
                    ),
                    //Lembrar Login
                    ForgotPassWidget(),
                    SizedBox(height: 50),
                    //Botão Login
                    LoginButtonWidget(
                      formKey: _formKey,
                      emailController: _emailController,
                      passwordController: _passwordController,
                    ),
                    LoginOrTextWidget(),
                    //Botão Login Google
                    //LoginButtonGoogleWidget(function: _authenticateWithGoogle,),
                    SizedBox(
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
                          BlocProvider.of<AuthBloc>(context).add(
                            SignInGoogleRequested(),
                          );
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
                    ),
                    //Não é membro ainda
                    LoginNotMemberWidget()
                  ],
                ),
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
