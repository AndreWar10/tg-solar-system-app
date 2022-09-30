import 'package:either_dart/either.dart';
import '../../presentation/widgets/errors/failure.dart';
import '../entities/exoplanet_entitie.dart';

abstract class ExoplanetRepository {
  Future<Either<Failure, List<ExoplanetEntitie>>> getExoplanet();
}
