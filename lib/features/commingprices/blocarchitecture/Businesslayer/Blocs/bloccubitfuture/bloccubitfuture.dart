
import 'package:flutter_bloc/flutter_bloc.dart';

Map<String, dynamic> myMap = {};
//TODO: CountterCubitFuture
class CountterCubitFuture extends Cubit<Map<String, dynamic>>{
  //CountterCubitFuture(super.initialState);
  CountterCubitFuture():super(myMap);

/*//TODO:
*    FUTURE  map  result
* */
  Future<void> increment() async {
    Future<Map<String,dynamic>> futureMap =    Future<Map<String,dynamic>>
        .value(getfutureMap())
        .catchError(
            (Object error) {
          print(' get ERROR $error  ');
        });
    Map<String, dynamic> myMap =await futureMap;
    emit(myMap);
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
  Future<void> incrementTwo() async {
    Future<Map<String,dynamic>> futureMapTwo =    Future<Map<String,dynamic>>
        .value(getfutureMapTwo())
        .catchError(
            (Object error) {
          print(' get ERROR $error  ');
        });
    Map<String, dynamic> myMapTwo =await futureMapTwo;
    emit(myMapTwo);
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



