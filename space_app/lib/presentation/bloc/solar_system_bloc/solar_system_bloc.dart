import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_system_solar.dart';
import 'solar_system_event.dart';
import 'solar_system_state.dart';

class SolarSystemBloc extends Bloc<SolarSystemEvent, SolarSystemState> {
  final GetSystemSolar _getSolarSystem;

  SolarSystemBloc(this._getSolarSystem) : super(SolarSystemIsEmpty()) {
    on<FetchSolarSystem>(
      (event, emit) async {
        final result = await _getSolarSystem.get();
        result.fold(
          (failure) {
            emit(SolarSystemIsError(failure.message));
          },
          (data) {
            emit(SolarSystemHasData(solarSystem: data));
          },
        );
      },
    );
  }
}
