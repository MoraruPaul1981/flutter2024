import 'package:bloc/bloc.dart';

import 'BlocState.dart';


/*
TODO: Bloc класс
 */
class BlocCreate extends Bloc<CounterEvents,int> {
  BlocCreate():super(10){
 on<CounterIncEvent>(_onIncremet);
 on<CounterDecEvent>(_onDeincremet);

  }


  _onIncremet(CounterIncEvent event,Emitter<int> emit) {
    emit(state+1);
  }
  _onDeincremet(CounterDecEvent event,Emitter<int> emit) {
    emit(state-1);
  }

}


