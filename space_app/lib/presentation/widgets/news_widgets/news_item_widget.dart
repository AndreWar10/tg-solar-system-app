import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../domain/entities/news_entitie.dart';
import '../../pages/news_page/news_detail_page.dart';
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
      padding: const EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 10),
      child: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => NewsDetailPage(
                news: news,
              ),
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewsImageWidget(news: news),
                  SizedBox(height: 10),
                  NewsTitleWidget(news: news),
                  SizedBox(height: 10),
                  NewsTextWidget(news: news),
                  NewsDateAndShareWidget(news: news),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

