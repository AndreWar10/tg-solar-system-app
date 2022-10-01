import 'package:flutter/material.dart';
import '../../../domain/entities/news_entitie.dart';
import '../../widgets/news_widgets/detail_news_widgets/detail_date_widget.dart';
import '../../widgets/news_widgets/detail_news_widgets/detail_image_widget.dart';
import '../../widgets/news_widgets/detail_news_widgets/detail_news_text.dart';
import '../../widgets/news_widgets/detail_news_widgets/detail_row_share.dart';
import '../../widgets/news_widgets/detail_news_widgets/detail_site_publication_widget.dart';
import '../../widgets/news_widgets/detail_news_widgets/detail_title_news_widget.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key, required this.news}) : super(key: key);

  final NewsEntitie news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(news.title), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 8),
            DetailRowShareWidget(news: news),
            DetailDateWidget(news: news),
            DetailTitleNewsWidget(news: news),
            SizedBox(height: 10),
            DetailSitePublicationWidget(news: news),
            SizedBox(height: 20),
            DetailImageWidget(news: news),
            SizedBox(height: 20),
            DetailNewsTextWidget(news: news),
          ],
        ),
      ),
    );
  }
}
