import 'package:flutter/material.dart';

class CustomRegisterTextField extends StatefulWidget {
  const CustomRegisterTextField({
    Key? key,
    required this.hintText,
    required this.isPass,
    this.controller,
  }) : super(key: key);

  final TextEditingController? controller;
  final String hintText;
  final bool isPass;

  @override
  State<CustomRegisterTextField> createState() =>
      _CustomRegisterTextFieldState();
}

class _CustomRegisterTextFieldState extends State<CustomRegisterTextField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 4),
          child: widget.isPass == false
              ? TextField(
                  controller: widget.controller,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: widget.hintText),
                )
              : TextField(
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
                  obscureText: _showPassword == false
                      ? true
                      : false, //esconder/mostrar password
                ),
        ),
      ),
    );
  }
}
