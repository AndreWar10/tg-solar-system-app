import 'package:flutter/material.dart';
import '../../../domain/entities/news_entitie.dart';
import 'news_date_and_share_widgets.dart';
import 'news_text_widget.dart';
import 'news_title_widget.dart';

class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF2C2E2F), borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewsImageWidget(news: news),
              SizedBox(height: 5),
              Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                child: NewsTitleWidget(news: news),
              ),
              SizedBox(height: 5),
              Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
                child: NewsTextWidget(news: news),
              ),
              SizedBox(height: 10),
              Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
                child: NewsDateAndShareWidget(news: news),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

