import 'package:either_dart/either.dart';
import '../../presentation/widgets/errors/failure.dart';
import '../entities/spacex_entitie.dart';

abstract class SpacexRepository {
  Future<Either<Failure, List<SpacexEntitie>>> getSpacex();
}
