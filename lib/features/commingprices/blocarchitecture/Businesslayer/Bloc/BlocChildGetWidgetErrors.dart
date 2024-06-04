

import 'package:flutter_bloc/flutter_bloc.dart';

class BlocChildGetWidgetErrors  extends Cubit<int>{
  BlocChildGetWidgetErrors(super.initialState);
  //CartCubit():super(0);


  void addItem() => emit(state + 1);


/*
  // Увеличение количества элементов корзины
  void addItem2({required  Logger logger}) {
    emit(state + 1);  // Увеличение количества элементов корзины
    logger.i(' CLick counterCubit .. $counterCubit   ' );

  }

  void removeItem({ required Logger logger}) {
    if (state > 0) {
      emit(state - 1);  // Уменьшение количества элементов корзины
    }
    logger.i(' CLick counterCubit .. $counterCubit   ' );
  }
*/

}