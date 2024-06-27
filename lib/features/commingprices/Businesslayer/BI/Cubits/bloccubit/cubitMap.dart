
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

 Map<String, dynamic> myMap={};


//TODO: CountterCubit
final class CubitMap extends Cubit<Map<String, dynamic>>{
  Logger logger;

  //CountterCubit(super.initialState);
   CubitMap(this.logger ):super(myMap);




/*//TODO:
*    MAP result
* */
void increment(){
  final Map<String, dynamic> myMap = {
    'id': 123,
    'name': 'John Doe',
  };
  logger.i(' Finifh()..  myMap $myMap  ');
  emit(myMap);

}

  void incrementTwo(){
   final  Map<String, dynamic> myMap2 = {
      'id': 856,
      'name': 'Moraru Paul ',
    };
   logger.i(' Finifh()..  myMap2 $myMap2  ');
    emit(myMap2);

  }


/*//TODO:КОНЕЦ КЛАСС  cuBIT
   */
}