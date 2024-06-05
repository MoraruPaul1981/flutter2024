

/* TODO: Class for Bloc Steam */
import 'package:bloc/bloc.dart';


import '../blocCounter/BlocStatecounter.dart';



class BlocStream extends Bloc <CounterEventscounters,int> {
  BlocStream() :super(10) {
    on<CounterIncEventcounter>(_onIncremet);
   // on<CounterIncEventcounter>(mapEventToState);
  }

  _onIncremet(CounterIncEventcounter event, Emitter<int> emit) {
    emit(state + 1);
  }

  Stream<int> mapEventToState(CounterIncEventcounter event,
      Emitter<int> emit) async* {
    // TODO:  create Steam Bloc

    switch (event) {
      case CounterIncEventcounter:
        yield state + 25;
        emit(state);
        break;
    // TODO: Handle this case.
    // TODO: Handle this case.
    }
  }

}
