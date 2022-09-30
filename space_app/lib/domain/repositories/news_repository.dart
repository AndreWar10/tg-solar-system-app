import 'package:either_dart/either.dart';
import '../../presentation/widgets/errors/failure.dart';
import '../entities/news_entitie.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<NewsEntitie>>> getNews();
}
