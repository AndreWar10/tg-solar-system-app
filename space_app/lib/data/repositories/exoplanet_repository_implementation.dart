import 'dart:io';

import 'package:either_dart/either.dart';

import '../../domain/entities/exoplanet_entitie.dart';
import '../../domain/repositories/exoplanet_repository.dart';
import '../../presentation/widgets/errors/exception.dart';
import '../../presentation/widgets/errors/failure.dart';
import '../datasources/exoplanet_remote_datasource.dart';

class ExoplanetRepositoryImpl implements ExoplanetRepository {
  final ExoplanetRemoteDataSource exoplanetRemoteDataSource;
  ExoplanetRepositoryImpl({required this.exoplanetRemoteDataSource});

  @override
  Future<Either<Failure, List<ExoplanetEntitie>>> getExoplanet() async {
    try {
      final result = await exoplanetRemoteDataSource.getExoplanet();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the Network'));
    }
  }
}