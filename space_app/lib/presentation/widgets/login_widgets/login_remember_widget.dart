import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginRememberWidget extends StatefulWidget {
   const LoginRememberWidget({
    Key? key,
   
  }) :  super(key: key);

  @override
  State<LoginRememberWidget> createState() => _LoginRememberWidgetState();
}

class _LoginRememberWidgetState extends State<LoginRememberWidget> {
  bool _checkvalue = false;
  final String _defaultText = "Lembrar minha senha";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Checkbox(
              value: _checkvalue,
              onChanged: (value) {
                setState(() {
                  _checkvalue = value!;
                });
              }),
          Text(
            _defaultText,
            style: GoogleFonts.montserrat(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
