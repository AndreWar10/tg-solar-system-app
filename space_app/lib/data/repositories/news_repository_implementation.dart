import 'dart:io';

import 'package:either_dart/either.dart';

import '../../domain/entities/news_entitie.dart';
import '../../domain/repositories/news_repository.dart';
import '../../presentation/widgets/errors/exception.dart';
import '../../presentation/widgets/errors/failure.dart';
import '../datasources/news_remote_datasource.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource newsRemoteDataSource;
  NewsRepositoryImpl({required this.newsRemoteDataSource});

  @override
  Future<Either<Failure, List<NewsEntitie>>> getNews() async {
    try {
      final result = await newsRemoteDataSource.getNews();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the Network'));
    }
  }
}
