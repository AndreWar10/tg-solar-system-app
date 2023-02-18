import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_news.dart';
import 'news_event.dart';
import 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNews _getNews;

  NewsBloc(this._getNews) : super(NewsIsEmpty()) {
    on<FetchNews>(
      (event, emit) async {
        if (state is NewsIsEmpty) {
          final result = await _getNews.get();
          result.fold(
            (failure) {
              emit(NewsIsError(failure.message));
            },
            (data) {
              emit(NewsHasData(news: data));
            },
          );
        } else {}
      },
    );
    on<PullToRefreshEvent>(
      (event, emit) async {
        final result = await _getNews.get();
        result.fold(
          (failure) {
            emit(NewsIsError(failure.message));
          },
          (data) {
            emit(NewsHasData(news: data));
          },
        );
      },
    );
  }
}
