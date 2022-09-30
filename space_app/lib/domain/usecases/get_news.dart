import 'package:either_dart/either.dart';

import '../../presentation/widgets/errors/failure.dart';
import '../entities/news_entitie.dart';
import '../repositories/news_repository.dart';

class GetNews {
  final NewsRepository repository;
  GetNews(this.repository);

  Future<Either<Failure, List<NewsEntitie>>> get() {
    // ignore: avoid_print
    print('getting News API..');
    return repository.getNews();
  }

}