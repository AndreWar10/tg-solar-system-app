import 'package:either_dart/either.dart';
import '../../presentation/widgets/errors/failure.dart';
import '../entities/exoplanet_entitie.dart';
import '../repositories/exoplanet_repository.dart';

class GetExoplanet {
  final ExoplanetRepository repository;
  GetExoplanet(this.repository);

  Future<Either<Failure, List<ExoplanetEntitie>>> get() {
    // ignore: avoid_print
    print('getting Exoplanet API..');
    return repository.getExoplanet();
  }
}
