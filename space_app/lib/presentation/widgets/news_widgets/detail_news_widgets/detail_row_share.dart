import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../domain/entities/news_entitie.dart';

class DetailRowShareWidget extends StatelessWidget {
  const DetailRowShareWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 35,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: Text(
              'Notícias',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.share),
            color: Color.fromARGB(255, 80, 79, 79),
            iconSize: 30,
            onPressed: () async {
              var urlPreview = news.url;
              await Share.share('${news.title}\n\n$urlPreview');
            },
          ),
        ],
      ),
    );
  }
}
