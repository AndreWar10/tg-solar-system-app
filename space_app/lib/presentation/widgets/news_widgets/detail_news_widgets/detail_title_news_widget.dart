import 'package:flutter/material.dart';
import '../../../../domain/entities/news_entitie.dart';

class DetailTitleNewsWidget extends StatelessWidget {
  const DetailTitleNewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Text(
        news.title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      ),
    );
  }
}