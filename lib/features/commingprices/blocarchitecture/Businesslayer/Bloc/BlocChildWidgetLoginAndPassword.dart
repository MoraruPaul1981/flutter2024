

import 'package:flutter_bloc/flutter_bloc.dart';

class BlocChildWidgetLoginAndPassword  extends Cubit<int>{
  BlocChildWidgetLoginAndPassword(super.initialState);



  //void addItem() => emit(state + 1);
  void addItem() {

    emit(state + 109856565);
  }


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