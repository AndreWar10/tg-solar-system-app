import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterTermsConditionsWidget extends StatelessWidget {
  const RegisterTermsConditionsWidget({
    Key? key,
  }) :  super(key: key);

  final bool _checkvalue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Checkbox(
              value: _checkvalue,
              onChanged: (value) {
                // setState(() {
                //   _checkvalue = value!;
                // });
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