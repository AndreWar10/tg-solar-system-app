
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/spacex_entitie.dart';

class SpacexDateWidget extends StatelessWidget {
  const SpacexDateWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('MMMM dd,  yyyy')
          .format(spacex.launchDateUtc!),
      style: GoogleFonts.montserrat(color: Colors.deepPurpleAccent),
    );
  }
}