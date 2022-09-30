import 'package:flutter/material.dart';
import '../../../../domain/entities/news_entitie.dart';

class DetailNewsTextWidget extends StatelessWidget {
  const DetailNewsTextWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Wrap(
        children: [
          Text(
            news.summary,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
