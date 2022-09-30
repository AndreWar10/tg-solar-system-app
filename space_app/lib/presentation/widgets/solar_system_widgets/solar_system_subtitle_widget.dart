import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SolarSystemSubitleWidget extends StatelessWidget {
  const SolarSystemSubitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sistema Solar',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Color.fromARGB(255, 218, 218, 218),
              //fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
