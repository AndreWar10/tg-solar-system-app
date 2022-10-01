import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_spacex.dart';
import 'spacex_event.dart';
import 'spacex_state.dart';

class SpacexBloc extends Bloc<SpacexEvent, SpacexState> {
  final GetSpacex _getSpacex;

  SpacexBloc(this._getSpacex) : super(SpacexIsEmpty()) {
    on<FetchSpacex>(
      (event, emit) async {
        final result = await _getSpacex.get();
        result.fold(
          (failure) {
            emit(SpacexIsError(failure.message));
          },
          (data) {
            emit(SpacexHasData(spacex: data));
          },
        );
      },
    );
  }
}
