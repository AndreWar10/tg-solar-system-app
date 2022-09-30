import 'package:equatable/equatable.dart';

import '../../../domain/entities/news_entitie.dart';


abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object?> get props => [];
}

class NewsIsEmpty extends NewsState {}

class NewsIsLoading extends NewsState {}

class NewsIsError extends NewsState {
  final String message;
  const NewsIsError(this.message);

  @override
  List<Object?> get props => [message];
}

class NewsHasData extends NewsState {
  final List<NewsEntitie> news;

  const NewsHasData({
    this.news = const <NewsEntitie>[],
  });

  NewsHasData copyWith({
    List<NewsEntitie>? news,
  }) {
    
    return NewsHasData(
      news: news ?? this.news,
    );
  }

  @override
  List<Object?> get props => [news];
}
