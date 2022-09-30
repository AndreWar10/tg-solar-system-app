import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../domain/entities/news_entitie.dart';

class DetailDateWidget extends StatelessWidget {
  const DetailDateWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            DateFormat('MMMM dd, yyyy - hh:mm')
                .format(news.publishedAt),
            style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}