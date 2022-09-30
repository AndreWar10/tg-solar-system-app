import 'package:flutter/material.dart';
import '../../../domain/entities/news_entitie.dart';
import 'news_item_widget.dart';

class ListViewNewsWidget extends StatelessWidget {
  const ListViewNewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final List<NewsEntitie> news;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) {
        return NewsItemWidget(news: news[index]);
      },
    );
  }
}
