import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 20, color: 
            Colors.white, 
          ),maxLines: 3,
        ),
      ],
    );
  }
}