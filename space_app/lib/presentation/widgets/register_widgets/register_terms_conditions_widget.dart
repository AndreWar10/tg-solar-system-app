import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterTermsConditionsWidget extends StatefulWidget {
  const RegisterTermsConditionsWidget({
    Key? key,
  }) :  super(key: key);

  @override
  State<RegisterTermsConditionsWidget> createState() => _RegisterTermsConditionsWidgetState();
}

class _RegisterTermsConditionsWidgetState extends State<RegisterTermsConditionsWidget> {
  bool _checkvalue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
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
            'Estou de acordo com os ',
            style: GoogleFonts.montserrat(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            //onTap: () => Navigator.of(context).pushNamed('/termos'),
            child: Text(
              'Termos & Condições',
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: Colors.deepPurple
              ),
            ),
          ),
        ],
      ),
    );
  }
}