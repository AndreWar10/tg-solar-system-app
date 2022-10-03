import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../domain/entities/news_entitie.dart';

class DetailOfficialNewsWidget extends StatelessWidget {
  const DetailOfficialNewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          final Uri url = Uri.parse(news.url);
          await launchUrl(url);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            children: [
              Icon(
                Icons.link,
                color: Colors.deepPurpleAccent,
              ),
              Text(
                ' Ver no site oficial',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
            ],
          ),
        ));
  }
}
