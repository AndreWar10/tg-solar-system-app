import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

import '../../../domain/entities/news_entitie.dart';

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
          style:
              TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey,),
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.share),
          color: Colors.deepPurpleAccent,
          iconSize: 25,
          onPressed: () async {
            var urlPreview = news.url;
            await Share.share('${news.title}\n\n$urlPreview');
          },
        ),
      ],
    );
  }
}