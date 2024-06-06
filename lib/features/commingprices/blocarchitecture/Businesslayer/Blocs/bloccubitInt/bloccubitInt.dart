
import 'dart:isolate';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

int getInt=0;
//TODO: CountterCubitFuture
class CountterCubitInt extends Cubit<int>{
  Logger logger;
  //CountterCubitFuture(super.initialState);
  CountterCubitInt(this.logger ):super(getInt);

/*//TODO:
*    FUTURE  map  result
* */
  Future<void> increment() async {
    Future<int> futureMap =    Future<int>
        .value(getfutureMap())
        .catchError(
            (Object error) {
          print(' get ERROR $error  ');
        });
    int myMap =await futureMap;
    logger.i(' Finifh()..  myMapTwo $myMap  ');
    emit(myMap);
  }

  //TODO: value for
  Future<int> getfutureMap() async {
    final myMap = await Isolate.run(() async {
      int getint =0;
      print(' Finifh()..  getint $getint  '+" Isolate.current.debugName.toString() "+Isolate.current.debugName.toString());
      return getint;
    });
    return myMap;
  }


//TODO: END class CountterCubitFuture
}



