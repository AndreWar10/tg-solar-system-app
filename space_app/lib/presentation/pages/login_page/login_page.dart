import 'package:flutter/material.dart';
import '../../widgets/login_widgets/custom_text_form_field.dart';
import '../../widgets/login_widgets/login_astronaut_widget.dart';
import '../../widgets/login_widgets/login_button_google_widget.dart';
import '../../widgets/login_widgets/login_button_widget.dart';
import '../../widgets/login_widgets/login_not_member.dart';
import '../../widgets/login_widgets/login_or_widget.dart';
import '../../widgets/login_widgets/login_remember_widget.dart';
import '../../widgets/login_widgets/login_subtitle_widget.dart';
import '../../widgets/login_widgets/login_title_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // late final controller = LoginController(onSucessLogin: () {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => HomePage(),
  //     ),
  //   );
  // }, onUpdate: () {
  //   setState(() {});
  // });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          reverse: true,
          child: Center(
            child: Form(
              //key: controller.formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SizedBox(height: 70),
                  //Imagem Astronauta
                  LoginAstronautWidget(),
                  //Titulo da page
                  LoginTitleWidget(),
                  //Subtitulo da page
                  LoginSubtitleWidget(),
                  SizedBox(height: 50),
                  //Email
                  CustomTextFormFieldWidget(isPass: false,hintText: 'Email'),
                  SizedBox(height: 15),
                  //Senha
                  CustomTextFormFieldWidget(isPass: true,hintText: 'Senha'),
                  //Lembrar Login
                  LoginRememberWidget(),
                  SizedBox(height: 50),
                  //Botão Login
                  LoginButtonWidget(),
                  LoginOrTextWidget(),
                  //Botão Login Google
                  LoginButtonGoogleWidget(),
                  //Não é membro ainda
                  LoginNotMemberWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
