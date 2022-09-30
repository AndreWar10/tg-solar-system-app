import 'package:either_dart/either.dart';
import 'package:space_app/domain/entities/solar_system_entitie.dart';
import 'package:space_app/domain/repositories/system_solar_repository.dart';

import '../../presentation/widgets/errors/failure.dart';

class GetSystemSolar {
  final SystemSolarRepository repository;
  GetSystemSolar(this.repository);

  Future<Either<Failure, List<SystemSolarEntitie>>> get() {
    // ignore: avoid_print
    print('getting Solar System API..');
    return repository.getSystemSolar();
  }

}