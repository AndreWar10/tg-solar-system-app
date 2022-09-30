import 'package:equatable/equatable.dart';

import '../../../domain/entities/exoplanet_entitie.dart';

abstract class ExoplanetState extends Equatable {
  const ExoplanetState();

  @override
  List<Object?> get props => [];
}

class ExoplanetIsEmpty extends ExoplanetState {}

class ExoplanetIsLoading extends ExoplanetState {}

class ExoplanetIsError extends ExoplanetState {
  final String message;
  const ExoplanetIsError(this.message);

  @override
  List<Object?> get props => [message];
}

class ExoplanetHasData extends ExoplanetState {
  final List<ExoplanetEntitie> exoplanet;

  const ExoplanetHasData({
    this.exoplanet = const <ExoplanetEntitie>[],
  });

  ExoplanetHasData copyWith({
    List<ExoplanetEntitie>? exoplanet,
  }) {
    
    return ExoplanetHasData(
      exoplanet: exoplanet ?? this.exoplanet,
    );
  }

  @override
  List<Object?> get props => [exoplanet];
}
