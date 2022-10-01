import 'dart:io';

import 'package:either_dart/either.dart';

import '../../domain/entities/spacex_entitie.dart';
import '../../domain/repositories/spacex_repository.dart';
import '../../presentation/widgets/errors/exception.dart';
import '../../presentation/widgets/errors/failure.dart';
import '../datasources/spacex_remote_datasource.dart';

class SpacexRepositoryImpl implements SpacexRepository {
  final SpacexRemoteDataSource spacexRemoteDataSource;
  SpacexRepositoryImpl({required this.spacexRemoteDataSource});

  @override
  Future<Either<Failure, List<SpacexEntitie>>> getSpacex() async {
    try {
      final result = await spacexRemoteDataSource.getSpacex();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the Network'));
    }
  }
}