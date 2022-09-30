 import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:space_app/domain/entities/solar_system_entitie.dart';

import '../../domain/repositories/system_solar_repository.dart';
import '../../presentation/widgets/errors/exception.dart';
import '../../presentation/widgets/errors/failure.dart';
import '../datasources/solar_system_remote_datasource.dart';

class SolarSystemRepositoryImpl implements SystemSolarRepository {
  final SolarSystemRemoteDataSource solarSystemRemoteDataSource;
  SolarSystemRepositoryImpl({required this.solarSystemRemoteDataSource});

  @override
  Future<Either<Failure, List<SystemSolarEntitie>>> getSystemSolar() async {
    try {
      final result = await solarSystemRemoteDataSource.getSystemSolar();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the Network'));
    }
  }
  
 
}