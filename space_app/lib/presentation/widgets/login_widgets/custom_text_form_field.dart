import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import 'package:google_fonts/google_fonts.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  const CustomTextFormFieldWidget({
    Key? key,
    required this.isPass,
    required this.hintText,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final bool isPass;
  final TextEditingController _controller;
  final String hintText;

  @override
  State<CustomTextFormFieldWidget> createState() =>
      _CustomTextFormFieldWidgetState();
}

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 4),
        child: widget.isPass == true
            ? TextFormField(
              
                // validator: (value) =>
                //     controller.validacaoSenha(value),
                // onSaved: (value) => controller.senha = value,
                controller: widget._controller,
                 autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  return val != null && val.length < 6
                      ? 'A senha deve possuir pelo menos 6 caracteres'
                      : null;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  suffixIcon: GestureDetector(
                    //esconder/mostrar senha
                    child: Icon(_showPassword == false
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onTap: () {
                      setState(() {
                        _showPassword =
                            !_showPassword; //inverte o valor no clique
                      });
                    },
                  ),
                ),
                style: GoogleFonts.montserrat(),

                obscureText: _showPassword == false
                    ? true
                    : false, //esconder/mostrar password
              )
            : TextFormField(
                              controller: widget._controller,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (val) {
                return val != null && !EmailValidator.validate(val)
                    ? 'Insira um email válido'
                    : null;
              },

                //onChanged: _controller.setLogin,
                //validator: (value) =>
                //    controller.validacaoEmail(value),
                //onSaved: (value) => controller.email = value,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: widget.hintText),
                style: GoogleFonts.montserrat(),
              ),
      ),
    );
  }
}
