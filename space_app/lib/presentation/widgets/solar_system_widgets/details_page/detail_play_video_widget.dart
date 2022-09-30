import 'package:flutter/material.dart';
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            primary: Colors.black,
          ),
          onPressed: () async {
            final Uri url =
                Uri.parse(widget.planet.video!);
            await launchUrl(url);
          },
          child: Row(
            children: const [
              Text('Assistir vídeo'),
              Icon(Icons.play_arrow),
            ],
          ),
        ),
      ],
    );
  }
}



