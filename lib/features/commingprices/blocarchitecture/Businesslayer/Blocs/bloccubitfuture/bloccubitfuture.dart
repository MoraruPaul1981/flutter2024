
import 'dart:isolate';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

Map<String, dynamic> myMap = {};


//TODO: CountterCubitFuture
final class CountterCubitFuture extends Cubit<Map<String, dynamic>>{
  Logger logger;
  //CountterCubitFuture(super.initialState);
  CountterCubitFuture(this.logger ):super(myMap);

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
    logger.i(' Finifh()..  myMapTwo $myMap  ');
    emit(myMap);
  }

  //TODO: value for
  Future<Map<String, dynamic>> getfutureMap() async {
    final myMap = await Isolate.run(() async {
      Map<String, dynamic> map = {
        'id': 23,
        'name': 'Jdo Jdo2',
      };
      print(' Finifh()..  sum $map  '+" Isolate.current.debugName.toString() "+Isolate.current.debugName.toString());
      return map;
    });
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
    logger.i(' Finifh()..  myMapTwo $myMapTwo  ');
    emit(myMapTwo);
  }

  //TODO: value for
  Future<Map<String, dynamic>> getfutureMapTwo() async {
    final myMap = await Isolate.run(() async {
      Map<String, dynamic> map = {
        'id': 5698444,
        'name': 'Moraru Paul -Future',
      };
      print(' Finifh()..  map $map  '+" Isolate.current.debugName.toString() "+Isolate.current.debugName.toString());
      return map;
    });
    return myMap;
  }
//TODO: END class CountterCubitFuture
}



