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
    return Text(
      news.summary,
      maxLines: 1,
      style: TextStyle(
        fontSize: 14,
      ),
    );
  }
}