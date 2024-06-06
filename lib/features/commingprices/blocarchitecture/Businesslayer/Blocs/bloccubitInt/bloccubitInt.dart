
import 'dart:isolate';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../Interfaces/Interfacebloc/Interfacebloc.dart';

int getInt=0;

//TODO: CountterCubitFuture
class CountterCubitInt extends Cubit<int>   implements InterfaceBlocPublicID {
  Logger logger;
  //CountterCubitFuture(super.initialState);
  CountterCubitInt(this.logger ):super(getInt);

/*//TODO: RUN
*    FUTURE  map  result
* */

  @override
  Future<void> getbasedonloginandpasswordPublicID({required Map<String, dynamic> parametrgetPublicId}) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    Future<int> futureValuePublicID =    Future<int>
        .value(valuePublicID(parametrgetPublicId:parametrgetPublicId)
        .catchError(
            (Object error) {
          print(' get ERROR $error  ');
        })
    );
    int PublicID =await futureValuePublicID;
    logger.i(' Finifh()..  PublicID $PublicID  ');
    emit(PublicID);
  }

  @override
  Future<int> valuePublicID({required Map<String, dynamic> parametrgetPublicId}) async {
    // TODO: implement valuePublicID
    final myMap = await Isolate.run(() async {
      Random random = new Random();
      int getint =random.nextInt(10000);
      print(' Finifh()..  getint $getint  '+" Isolate.current.debugName.toString() "+Isolate.current.debugName.toString());
      return getint;
    });
    return myMap;
  }





//TODO: END class CountterCubitFuture
}



