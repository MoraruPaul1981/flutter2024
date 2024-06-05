import 'package:bloc/bloc.dart';

import 'CounterEventsFuture.dart';


/*
TODO: Bloc класс
 */
class BlocCreateFuture extends Bloc<CounterEventsFuture,int> {
  BlocCreateFuture():super(10){
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


