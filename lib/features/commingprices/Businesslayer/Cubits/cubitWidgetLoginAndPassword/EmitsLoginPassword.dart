
import 'dart:isolate';
import 'dart:math';


import 'package:commintprices/features/commingprices/Businesslayer/Cubits/cubitWidgetLoginAndPassword/paramets/ParametsLoginPassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../Datalayer/entities/Entities1CMap.dart';
import '../../../Datalayer/remote/FuturesPing1cServer.dart';
import '../../BI/Interfaces/Interfacebloc/Interfacebloc.dart';
import '../../BI/adressJboss/getAdress.dart';
import '../../BI/errors/Errors.dart';
import 'CubitLoginPassword.dart';


class EmitsLoginPassword extends CubitLoginPassword{
  EmitsLoginPassword(super.initialState);



  /* TODO:  EMIT() просто ответы   визуальные для обратно  UI
 /* TODO:  EMIT() просто ответы   визуальные для обратно  UI
 *   */
 *   */
  /* TODO:  EMIT() просто ответы   визуальные для обратно  UI
 /* TODO:  EMIT() просто ответы   визуальные для обратно  UI
 *   */
 *   */



  Future<void> emitBackUIEmptyLoginAndPassword( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      emit(1);
      print('  callBackUIEmptyLoginAndPassword  emit ${emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }





  Future<void> emitBackUIDontServerStatus( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      emit(2);
      print('  callBackUIDontServerStatus  emit ${emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }



  Future<void> emitBackUIErrorPublicId( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      emit(3);
      print('  callBackUISuccessAuntifcation  emit ${emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }










/*///TODO:  Успешные Future Logon and Password
*/
  /*///TODO:  Успешные Future Logon and Password
*/

  Future<void> emitBackUISuccessServerStatus( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      emit(21);
      print('  callBackUISuccessServerStatus  emit ${emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }



  Future<void> emitBackUISuccessPublicId( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      emit(200);
      print('  callBackUISuccessAuntifcation  emit ${emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }

}






