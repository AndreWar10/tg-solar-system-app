
import 'package:equatable/equatable.dart';

abstract class SolarSystemEvent extends Equatable {
  const SolarSystemEvent();

  @override
  List<Object?> get props => [];
}

class FetchSolarSystem extends SolarSystemEvent {

} 
class RefreshedSolarSystem extends SolarSystemEvent {
} 