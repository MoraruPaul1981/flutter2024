
import 'dart:isolate';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../../Businesslayer/BI/Interfaces/Interfacebloc/Interfacebloc.dart';
import '../../../../Businesslayer/BI/errors/Errors.dart';



int getInt=0;

//TODO: CountterCubitFuture
class CubitLoginPassword extends Cubit<int>   implements InterfaceBlocPublicID {
  Logger logger;
  //CountterCubitFuture(super.initialState);
  CubitLoginPassword(this.logger ):super(getInt);








/*//TODO: RUN
*    FUTURE  ServerStatus
* */

  @override
  Future<void> startGettingServerStatus({required Map<String, dynamic> parametrgetPublicId}) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
    Future<int> futureValuePublicID =    Future<int>
        .value(futurePublicID(parametrgetPublicId:parametrgetPublicId)
        .catchError(
            (Object error) {
          print(' get ERROR $error  ');
        })
    );
    int PublicID =await futureValuePublicID;
    logger.i(' Finifh()..  PublicID $PublicID  ');
   /* //TODO:
   *     главная команда всегда кода eьше Ответ */
    emit(PublicID);
    //TODO error
  }   catch (e, stacktrace) {
  print(' get ERROR $e get stacktrace $stacktrace ');
  //TODO: Gradle Error
  Errors errors=Errors();
  errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
}
  }
  @override
  Future<int> futureServerStatus({required Map<String, dynamic> parametrgetPublicId}) async {
    // TODO: implement valuePublicID
    final PublicID = await Isolate.run(() async {
      int PublicID=0;
      Random random = new Random();
      PublicID =random.nextInt(10000);
      print(' Finifh()..  PublicID $PublicID  '+" Isolate.current.debugName.toString() "+Isolate.current.debugName.toString());
      return PublicID;
    });
    return PublicID;
  }












  /*//TODO: RUN
*    FUTURE  Public ID
* */

  @override
  Future<void> startGettingServerPublicId({required Map<String, dynamic> parametrgetPublicId}) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      Future<int> futureValuePublicID =    Future<int>
          .value(futurePublicID(parametrgetPublicId:parametrgetPublicId)
          .catchError(
              (Object error) {
            print(' get ERROR $error  ');
          })
      );
      int PublicID =await futureValuePublicID;
      logger.i(' Finifh()..  PublicID $PublicID  ');
      /* //TODO:
   *     главная команда всегда кода eьше Ответ */
      emit(PublicID);
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }



  @override
  Future<int> futurePublicID({required Map<String, dynamic> parametrgetPublicId}) async {
    // TODO: implement futurePublicID
    // TODO: implement valuePublicID
    final PublicID = await Isolate.run(() async {
      int PublicID=0;
      Random random = new Random();
      PublicID =random.nextInt(10000);
      print(' Finifh()..  PublicID $PublicID  '+" Isolate.current.debugName.toString() "+Isolate.current.debugName.toString());
      return PublicID;
    });
    return PublicID;
  }










//TODO: END class CountterCubitFuture
}



