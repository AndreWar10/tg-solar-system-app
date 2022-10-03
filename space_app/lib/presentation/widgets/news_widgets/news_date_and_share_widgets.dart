import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/news_entitie.dart';
import '../../pages/news_page/news_detail_page.dart';

class NewsDateAndShareWidget extends StatelessWidget {
  const NewsDateAndShareWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        //DateFormat('dd/MM/yyyy - hh:mm').format(news.publishedAt),
        Text(
          DateFormat('LLLL dd, yyyy').format(news.publishedAt),
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => NewsDetailPage(
                news: news,
              ),
            ),
          ),
          child: Text(
                'Saiba Mais',
                style: GoogleFonts.montserrat( fontWeight: FontWeight.bold
                ,color: Colors.deepPurpleAccent),
              ),
        ),
        // Container(
        //     height: 28,
        //     width: 83,
        //     decoration: BoxDecoration(
        //         color: Colors.deepPurpleAccent,
        //         borderRadius: BorderRadius.circular(30)),
        //     child: Center(
        //         child: Text(
        //       'Saiba Mais',
        //       style: TextStyle(color: Colors.white),
        //     ))), 

        // IconButton(
        //   icon: Icon(Icons.share),
        //   color: Colors.deepPurpleAccent,
        //   iconSize: 25,
        //   onPressed: () async {
        //     var urlPreview = news.url;
        //     await Share.share('${news.title}\n\n$urlPreview');
        //   },
        // ),
      ],
    );
  }
}
