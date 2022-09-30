import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../presentation/widgets/errors/exception.dart';
import '../models/news_model.dart';
import '../utils/apis.dart';

abstract class NewsRemoteDataSource {
  Future<List<NewsModel>> getNews();
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final http.Client client;
  NewsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<NewsModel>> getNews() async {
    var response = await client.get(
      Uri.parse(API.news),
    );

    if (response.statusCode == 200) {
      // ignore: avoid_print
      print(response.body);
      var decodedResponse = await json.decode(response.body);
      List<NewsModel> news = [
        for (final e in decodedResponse) NewsModel.fromJson(e)
      ];
      return news;
    } else {
      throw ServerException();
    }
  }
}
