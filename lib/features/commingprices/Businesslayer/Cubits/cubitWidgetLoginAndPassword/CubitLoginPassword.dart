
import 'dart:isolate';
import 'dart:math';


import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../Datalayer/entities/Entities1CMap.dart';
import '../../../Datalayer/remote/FuturesPing1cServer.dart';
import '../../BI/Interfaces/Interfacebloc/Interfacebloc.dart';
import '../../BI/errors/Errors.dart';



//TODO: CountterCubitFuture
class CubitLoginPassword extends Cubit<int>  {
  CubitLoginPassword( initialState):super( initialState);


/*//TODO: RUN
*    FUTURE  ServerStatus
* */


  @override
  Future<void> startGettingServerStatus({required Map<String, dynamic> parametrgetPublicId}) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try {
      String login = parametrgetPublicId.values.elementAt(0);
      String password = parametrgetPublicId.values.elementAt(1);
      BuildContext context = parametrgetPublicId.values.elementAt(2);
      Logger logger = parametrgetPublicId.values.elementAt(3);

      logger.i(
          'login ${login} .. password ${password} ..  context ${context} ..  logger ${logger} ..  ');



      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
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
     /*  emit(200);*/
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







