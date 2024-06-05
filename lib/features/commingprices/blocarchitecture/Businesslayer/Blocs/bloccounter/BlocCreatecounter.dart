import 'package:bloc/bloc.dart';

import 'BlocStatecounter.dart';


/*
TODO: Bloc класс
 */
class BlocCreatecounter extends Bloc<CounterEventscounters,int> {
  BlocCreatecounter():super(10){
 on<CounterIncEventcounter>(_onIncremet);
 on<CounterDecEventcounter>(_onDeincremet);

  }


  _onIncremet(CounterIncEventcounter event,Emitter<int> emit) {
    emit(state+1);
  }
  _onDeincremet(CounterDecEventcounter event,Emitter<int> emit) {
    emit(state-1);
  }

}


