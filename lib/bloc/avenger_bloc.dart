import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'avenger_event.dart';
part 'avenger_state.dart';

class AvengerBloc extends Bloc<AvengerEvent, AvengerState> {
  AvengerBloc() : super(AvengerInitial()) {
    on<AvengerStartEvent>((event, emit) {});
    on<SelectedAvengerEvent>((event, emit) {
      event.avengerName;
      /// изменить после того как напишу фабричный конструктор
      /// для обновления рейтинга
      // emit(AvengerInitial.update(name: event.avengerName));
    });
    on<AvengerFinishEvent>((event, emit) {});
  }
}
