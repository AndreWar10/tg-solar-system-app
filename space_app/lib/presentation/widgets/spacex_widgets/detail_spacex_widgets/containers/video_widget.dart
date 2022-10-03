import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../domain/entities/spacex_entitie.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
    required this.spacex,
  }) : super(key: key);

  final SpacexEntitie spacex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 440, right: 285),
      child: Positioned(
        child: GestureDetector(
          onTap: () async {
            final Uri url = Uri.parse(spacex.links!.videoLink!);
            await launchUrl(url);
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xFF1C1E1F),
                borderRadius: BorderRadius.circular(12)),
            child: Icon(Icons.play_arrow, color: Colors.white, size: 50),
          ),
        ),
      ),
    );
  }
}
