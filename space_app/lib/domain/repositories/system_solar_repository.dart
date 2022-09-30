import 'package:either_dart/either.dart';
import 'package:space_app/domain/entities/solar_system_entitie.dart';

import '../../presentation/widgets/errors/failure.dart';

abstract class SystemSolarRepository {
  Future<Either<Failure, List<SystemSolarEntitie>>> getSystemSolar();
}