part of 'avenger_bloc.dart';

@immutable
abstract class AvengerEvent {}

class AvengerStartEvent extends AvengerEvent {}

class AvengerFinishEvent extends AvengerEvent {}

class SelectedAvengerEvent extends AvengerEvent {
  final String avengerName;

  SelectedAvengerEvent({
    required this.avengerName,
  });
}
