import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'container_solar_system_details.dart';

class DetailTextoWidget extends StatelessWidget {
  const DetailTextoWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailSolarSystemContainer widget;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          widget.planet.resume,
          style: GoogleFonts.montserrat(
            fontSize: 15,
          ),
        )
      ],
    );
  }
}