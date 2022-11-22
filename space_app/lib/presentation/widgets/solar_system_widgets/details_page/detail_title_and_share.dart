import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'container_solar_system_details.dart';

class DetailTitleAndShare extends StatelessWidget {
  const DetailTitleAndShare({
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
          widget.planet.name,
          style: GoogleFonts.montserrat(
            fontSize: 44,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        Spacer(),
      
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: IconButton(
            icon: Icon(Icons.share),
            color: Color.fromARGB(255, 109, 108, 108),
            iconSize: 40,
            onPressed: () async {
              var urlPreview =
                  widget.planet.video!.toString();
              await Share.share(
                  'Veja que vídeo interessante que obtive gratuitamente no App Keep Looking Up 👇 \n\n$urlPreview');
            },
          ),
        ),
      ],
    );
  }
}