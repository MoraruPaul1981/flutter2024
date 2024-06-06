
import 'package:flutter_bloc/flutter_bloc.dart';



class CountterCubit extends Cubit<Map<String, dynamic>>{
  CountterCubit(super.initialState);
 // CountterCubit():super(myMap);



void increment(){
  final Map<String, dynamic> myMap = {
    'id': 123,
    'name': 'John Doe',
  };
  emit(myMap);

}

  void incrementTwo(){
   final  Map<String, dynamic> myMap2 = {
      'id': 856,
      'name': 'Moraru Paul ',
    };
    emit(myMap2);

  }




/*//TODO:КОНЕЦ КЛАСС  cuBIT
   */
}