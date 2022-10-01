import 'package:equatable/equatable.dart';
import 'package:space_app/domain/entities/spacex_entitie.dart';



abstract class SpacexState extends Equatable {
  const SpacexState();

  @override
  List<Object?> get props => [];
}

class SpacexIsEmpty extends SpacexState {}

class SpacexIsLoading extends SpacexState {}

class SpacexIsError extends SpacexState {
  final String message;
  const SpacexIsError(this.message);

  @override
  List<Object?> get props => [message];
}

class SpacexHasData extends SpacexState {
  final List<SpacexEntitie> spacex;

  const SpacexHasData({
    this.spacex = const <SpacexEntitie>[],
  });

  SpacexHasData copyWith({
    List<SpacexEntitie>? spacex,
  }) {
    
    return SpacexHasData(
      spacex: spacex ?? this.spacex,
    );
  }

  @override
  List<Object?> get props => [spacex];
}
