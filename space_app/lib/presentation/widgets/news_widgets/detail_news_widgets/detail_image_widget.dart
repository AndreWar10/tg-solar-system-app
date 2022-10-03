import 'package:flutter/material.dart';
import '../../../../domain/entities/news_entitie.dart';

class DetailImageWidget extends StatelessWidget {
  const DetailImageWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //borderRadius: BorderRadius.circular(20),
      child: Image.network(
        news.imageUrl,
      ),
    );
  }
}
