
import 'package:equatable/equatable.dart';

abstract class SpacexEvent extends Equatable {
  const SpacexEvent();

  @override
  List<Object?> get props => [];
}

class FetchSpacex extends SpacexEvent {

} 
class RefreshedSpacex extends SpacexEvent {
} 

class PullToRefreshEvent extends SpacexEvent {}