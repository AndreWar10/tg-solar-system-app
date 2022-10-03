import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../domain/entities/news_entitie.dart';

class NewsTextWidget extends StatelessWidget {
  const NewsTextWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          news.summary,
          style: GoogleFonts.montserrat(
            fontSize: 18, color: 
            Colors.white, 
          ),maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}