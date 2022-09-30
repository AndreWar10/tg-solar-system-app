import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_exoplanet.dart';
import 'exoplanet_event.dart';
import 'exoplanet_state.dart';

class ExoplanetBloc extends Bloc<ExoplanetEvent, ExoplanetState> {
  final GetExoplanet _getExoplanet;

  ExoplanetBloc(this._getExoplanet) : super(ExoplanetIsEmpty()) {
    on<FetchExoplanet>(
      (event, emit) async {
        final result = await _getExoplanet.get();
        result.fold(
          (failure) {
            emit(ExoplanetIsError(failure.message));
          },
          (data) {
            emit(ExoplanetHasData(exoplanet: data));
          },
        );
      },
    );
  }
}
