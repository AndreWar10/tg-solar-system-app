import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'container_solar_system_details.dart';

class DetailSubtitleWidget extends StatelessWidget {
  const DetailSubtitleWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailSolarSystemContainer widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          //era desscription
          widget.planet.description!,
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}