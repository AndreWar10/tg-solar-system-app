import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'container_solar_system_details.dart';


class DetailTecnicalInformationWidget extends StatelessWidget {
  const DetailTecnicalInformationWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailSolarSystemContainer widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.planet.features.diameter,
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              widget.planet.features.sunDistance,
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Diâmetro',
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            Spacer(),
            Text(
              'Distância do Sol',
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.planet.features.satellites.number.toString(),
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              widget.planet.features.orbitalPeriod.last,
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Satélites',
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            Spacer(),
            Text(
              'Duração do ano',
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.planet.features.rotationDuration.toString(),
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              widget.planet.features.orbitalSpeed,
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Período de rotação',
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            Spacer(),
            Text(
              'Velocidade da órbita',
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.planet.features.temperature.toString(),
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              widget.planet.features.radius,
              style: GoogleFonts.montserrat(
                  fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Temperatura',
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            Spacer(),
            Text(
              'Raio do planeta',
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
