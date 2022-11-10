import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../domain/entities/news_entitie.dart';

class NewsTitleWidget extends StatelessWidget {
  const NewsTitleWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news.newsSite,
      maxLines: 1,
      style: GoogleFonts.montserrat(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurpleAccent),
    );
  }
}

class NewsImageWidget extends StatelessWidget {
  const NewsImageWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
      // ignore: unnecessary_null_comparison
      child: news.imageUrl != null
          ? Image.network(
              news.imageUrl,
              loadingBuilder: (_, child, progress) {
                if (progress == null) return child;
                return CircularProgressIndicator
                    .adaptive(); //adaptative muda de acordo com a plataforma android/ios,etc
              },
            )
          : Image.asset(
              'assets/default/default_news_image.jpg',
            ),
    );
  }
}
