import 'package:bloc/bloc.dart';

import '../../../Datalayer/entities/Entities1CMap.dart';
import 'CounterEventsFuture.dart';


/*
TODO: Bloc класс
 */
class BlocCreateFuture extends Bloc<CounterEventsFuture, List<Map<String, List<Entities1CMap>>>>  {
  BlocCreateFuture(super.initialState);


  _onIncremet(CounterIncEventFuture event,Emitter<List<Map<String, List<Entities1CMap>>>> emit) {
    emit(state);
  }
  _onDeincremet(CounterIncEventFuture event,Emitter<List<Map<String, List<Entities1CMap>>>> emit) {
    emit(state);
  }

}


