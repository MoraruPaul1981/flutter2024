
import 'dart:isolate';
import 'dart:math';


import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../BI/Interfaces/Interfacebloc/Interfacebloc.dart';
import '../../BI/errors/Errors.dart';



//TODO: CountterCubitFuture
class CubitLoginPassword extends Cubit<int>   implements InterfaceBlocPublicID {
  CubitLoginPassword( initialState):super( initialState);
  //CountterCubitFuture(super.initialState);

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
   print(' Finifh()..  PublicID $PublicID  ');
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
      print(' Finifh()..  PublicID $PublicID  ');
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








 /* TODO: когда логин и пароль нет
 *   */
  Future<void> callBackDontLoginAndPassword({required   String login, required String password}) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
     print(' callBackDontLoginAndPassword()..  login ${login} ..  password ${password}   ');
      /* //TODO:
   *     главная команда всегда кода eьше Ответ */
       emit(10);
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }





//TODO: END class CountterCubitFuture
}



