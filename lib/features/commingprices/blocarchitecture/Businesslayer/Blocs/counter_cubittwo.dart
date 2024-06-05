import 'package:bloc/bloc.dart';



class CounterCubitTwo extends Cubit<int> {
  CounterCubitTwo() : super(0);

  void incrementTwo() => emit(state + 1);
  void decrementTwo() => emit(state - 1);
}
