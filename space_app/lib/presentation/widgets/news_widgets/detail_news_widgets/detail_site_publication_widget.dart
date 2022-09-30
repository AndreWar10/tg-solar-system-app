import 'package:flutter/material.dart';

import '../../../../domain/entities/news_entitie.dart';

class DetailSitePublicationWidget extends StatelessWidget {
  const DetailSitePublicationWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            news.newsSite,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.grey),
          ),
        ],
      ),
    );
  }
}