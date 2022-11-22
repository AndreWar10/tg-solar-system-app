import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'container_solar_system_details.dart';

class DetailPlayVideoWidget extends StatelessWidget {
  const DetailPlayVideoWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailSolarSystemContainer widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final Uri url = Uri.parse(widget.planet.video!);
        await launchUrl(url);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Row(
          children: [
            Icon(Icons.play_arrow, color: Colors.deepPurpleAccent, size: 30,),
            Text('Assistir Vídeo', style:  GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
            ),

          ],
        ),
      ),
    );
  }
}
