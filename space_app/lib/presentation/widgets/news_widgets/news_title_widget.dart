import 'package:flutter/material.dart';

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
      news.title,
      maxLines: 1,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        news.imageUrl,
      ),
    );
  }
}