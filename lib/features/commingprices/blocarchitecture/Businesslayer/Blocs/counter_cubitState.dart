import 'package:bloc/bloc.dart';


/*
TODO: Bloc класс
 */
class CounterCubitState extends Bloc<CounterEvents,int> {
  CounterCubitState():super(10){
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

abstract class CounterEvents{}

class CounterIncEvent extends  CounterEvents{}

class CounterDecEvent extends  CounterEvents{}
