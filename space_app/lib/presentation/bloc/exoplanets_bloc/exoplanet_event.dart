
import 'package:equatable/equatable.dart';

abstract class ExoplanetEvent extends Equatable {
  const ExoplanetEvent();

  @override
  List<Object?> get props => [];
}

class FetchExoplanet extends ExoplanetEvent {

} 
class RefreshedExoplanet extends ExoplanetEvent {
} 

