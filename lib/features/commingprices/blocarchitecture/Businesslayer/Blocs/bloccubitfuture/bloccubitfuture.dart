
import 'package:flutter_bloc/flutter_bloc.dart';

Map<String, dynamic> myMap = {};
 Future<Map<String, dynamic>> future=Future.value(myMap);

//TODO: CountterCubitFuture
class CountterCubitFuture extends Cubit<Future<Map<String, dynamic>>>{
  //CountterCubitFuture(super.initialState);
  CountterCubitFuture():super(future);

/*//TODO:
*    FUTURE  map  result
* */
  void increment(){
    Future<Map<String,dynamic>> futureMap =    Future<Map<String,dynamic>>
        .value(getfutureMap())
        .catchError(
            (Object error) {
          print(' get ERROR $error  ');
        });
    emit(futureMap);
  }

  //TODO: value for
  Map<String, dynamic> getfutureMap(){
    final Map<String, dynamic> myMap = {
      'id': 123,
      'name': 'John Doe',
    };
    return myMap;
  }



/*//TODO:
*    FUTURE  mapTwo  result
* */
  void incrementTwo(){
    Future<Map<String,dynamic>> futureMap =    Future<Map<String,dynamic>>
        .value(getfutureMapTwo())
        .catchError(
            (Object error) {
          print(' get ERROR $error  ');
        });
    emit(futureMap);
  }

  //TODO: value for
  Map<String, dynamic> getfutureMapTwo(){
    final Map<String, dynamic> myMap = {
      'id': 5698444,
      'name': 'Moraru Paul -Future',
    };
    return myMap;
  }
//TODO: END class CountterCubitFuture
}



