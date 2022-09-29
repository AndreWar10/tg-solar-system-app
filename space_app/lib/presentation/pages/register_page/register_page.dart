import 'package:flutter/material.dart';
import '../../widgets/register_widgets/register_astronaut_widget.dart';
import '../../widgets/register_widgets/register_back_to_login_widget.dart';
import '../../widgets/register_widgets/register_button_widget.dart';
import '../../widgets/register_widgets/register_subtitle_widget.dart';
import '../../widgets/register_widgets/register_terms_conditions_widget.dart';
import '../../widgets/register_widgets/register_text_field_widget.dart';
import '../../widgets/register_widgets/register_title_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _senhaTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          reverse: true,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 70),
                //Imagem Astronauta
                RegisterAstronautWidget(),
                //Titulo da tela
                RegisterTitleWidget(),
                SizedBox(height: 10),
                //Subtitulo da tela
                RegisterSubtitleWidget(),
                SizedBox(height: 45),
                //Email
                CustomRegisterTextField(controller: _emailTextController, hintText: 'Email', isPass: false),
                SizedBox(height: 10),
                //Senha
                CustomRegisterTextField(controller: _senhaTextController,hintText: 'Senha',isPass: true),
                SizedBox(height: 10),
                //Confirma Senha
                CustomRegisterTextField(hintText: 'Confirmação de Senha', isPass: true),
                SizedBox(height: 10),
                //Termos e condições
                RegisterTermsConditionsWidget(),
                SizedBox(height: 90),
                //Botão Criar conta
                RegisterButtonWidget(),
                SizedBox(height: 10),
                //Ja tem conta
                RegisterBackToLoginWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
