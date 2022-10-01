import 'package:either_dart/either.dart';

import '../../presentation/widgets/errors/failure.dart';
import '../entities/spacex_entitie.dart';
import '../repositories/spacex_repository.dart';

class GetSpacex {
  final SpacexRepository repository;
  GetSpacex(this.repository);

  Future<Either<Failure, List<SpacexEntitie>>> get() {
    // ignore: avoid_print
    print('getting Spacex API..');
    return repository.getSpacex();
  }

}