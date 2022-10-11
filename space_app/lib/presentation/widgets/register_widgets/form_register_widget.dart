import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:space_app/presentation/widgets/register_widgets/register_back_to_login_widget.dart';
import 'package:space_app/presentation/widgets/register_widgets/register_button_widget.dart';
import 'register_astronaut_widget.dart';
import 'register_subtitle_widget.dart';
import 'register_terms_conditions_widget.dart';
import 'register_text_field_widget.dart';
import 'register_title_widget.dart';

class FormRegisterWidget extends StatelessWidget {
  const FormRegisterWidget({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController confirmPasswordController,
     required TextEditingController nameController,
  })  : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController,
        _confirmPasswordController = confirmPasswordController,
         _nameController = nameController,
        super(key: key);

  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final GlobalKey<FormState> _formKey;
  final TextEditingController _confirmPasswordController;
  final  TextEditingController _nameController ;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
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
              CustomRegisterTextField(
                controller: _nameController,
                hintText: 'Primeiro Nome',
                isPass: false,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  return val != null &&  val.length < 3
                      ? 'Insira um nome válido'
                      : null;
                },
              ),
              SizedBox(height: 10),
              //Email
              CustomRegisterTextField(
                controller: _emailController,
                hintText: 'Email',
                isPass: false,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  return val != null && !EmailValidator.validate(val)
                      ? 'Insira um email válido'
                      : null;
                },
              ),
              SizedBox(height: 10),
              //Senha
              CustomRegisterTextField(
                controller: _passwordController,
                hintText: 'Senha',
                isPass: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  return val != null && val.length < 6
                      ? "A senha deve possuir pelo menos 6 caracteres"
                      : null;
                },
              ),
              SizedBox(height: 10),
              //Confirma Senha
              CustomRegisterTextField(
                controller: _confirmPasswordController,
                hintText: 'Confirmação de Senha',
                isPass: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (_passwordController.text !=
                      _confirmPasswordController.text) {
                    return 'As senhas não são coincidentes';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              //Termos e condições
              RegisterTermsConditionsWidget(),
              SizedBox(height: 40),
              //Botão Criar conta
              RegisterButtonWidget(formKey: _formKey,
              emailController: _emailController,
              passwordController: _passwordController, nomeController: _nameController,),
              SizedBox(height: 15),
              //Ja tem conta
              RegisterBackToLoginWidget(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
