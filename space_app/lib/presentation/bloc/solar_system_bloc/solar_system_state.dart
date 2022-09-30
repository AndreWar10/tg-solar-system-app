import 'package:equatable/equatable.dart';
import 'package:space_app/domain/entities/solar_system_entitie.dart';

abstract class SolarSystemState extends Equatable {
  const SolarSystemState();

  @override
  List<Object?> get props => [];
}

class SolarSystemIsEmpty extends SolarSystemState {}

class SolarSystemIsError extends SolarSystemState {
  final String message;
  const SolarSystemIsError(this.message);

  @override
  List<Object?> get props => [message];
}

class SolarSystemHasData extends SolarSystemState {
  final List<SystemSolarEntitie> solarSystem;

  const SolarSystemHasData({
    this.solarSystem = const <SystemSolarEntitie>[],
  });

  SolarSystemHasData copyWith({
    List<SystemSolarEntitie>? solarSystem,
  }) {
    
    return SolarSystemHasData(
      solarSystem: solarSystem ?? this.solarSystem,
    );
  }

  @override
  List<Object?> get props => [solarSystem];
}
