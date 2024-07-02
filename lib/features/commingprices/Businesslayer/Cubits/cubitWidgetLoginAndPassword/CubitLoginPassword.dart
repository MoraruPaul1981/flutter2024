
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



//TODO: CountterCubitFuture
class CubitLoginPassword extends Cubit<int>  {
  CubitLoginPassword( initialState):super( initialState);


/*//TODO: RUN
*    FUTURE  ServerStatus
* */



  Future<int> startGettingServerStatus({required ParametsServerStatus parametsServerStatus}) async {
    // TODO: implement getbasedonloginandpasswordPublicID
   late String ServerStatus;
    try {
      String login = parametsServerStatus.getlogin;
      String password = parametsServerStatus.getpassword;
      BuildContext context = parametsServerStatus.getcontext;
      Logger logger = parametsServerStatus.getlogger;

      logger.i('login ${login} .. password ${password} ..  context ${context} ..  logger ${logger} ..  ');

      var adressCurrent1C=  GetAdress1CPrices().adress1C( ) as String;
      final parsedUrl=Uri.parse(adressCurrent1C) as Uri;

      ServerStatus =await futureServerStatus(parsedUrl)  ??   "0";
      print('ServerStatus ${ServerStatus}  ServerStatus.length ${ServerStatus.length} ') ;
      /* //TODO:
   *     главная команда всегда кода eьше Ответ */
      emit(ServerStatus.length);
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
    return  ServerStatus.length ?? 0;
    }

  Future<String> futureServerStatus(     Uri parsedUrl ) async {//TODO: {required Map<String, dynamic> parametrgetPublicId}
    // TODO: implement futurePublicID
    final ServerStatus = await Isolate.run(() async {
      FuturesPing1cServer futuresPing1cServer=FuturesPing1cServer();
     String ServerStatus = await  futuresPing1cServer.CallBackPing(parsedUrl );
      print(' Finifh()..  ServerStatus $ServerStatus  '+" Isolate.current.debugName.toString() "+Isolate.current.debugName.toString());
      return ServerStatus;
    });
    return ServerStatus;
  }











  /*//TODO: RUN
*    FUTURE  Public ID
* */
  Future<int> startGettingServerPublicId({required ParametsServerStatus parametsServerStatus}) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    late int PublicID;
    try{
     Future<int> futureValuePublicID =    Future<int>.value(futurePublicID(parametsServerStatus: parametsServerStatus))
     ..then((futureValuePublicID) {
       //TODO then
      print('start futureValuePublicID .. ');
       return futureValuePublicID;

     }).catchError(
             (Object error) {
               print(' get ERROR $error  ');
         }
     );

      PublicID =await futureValuePublicID;
      print(' Finifh()..  PublicID $PublicID  ') ;
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
    return  PublicID ?? 0;
  }

  Future<int> futurePublicID({required ParametsServerStatus parametsServerStatus}) async {
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























































 /* TODO:  EMIT()
      когда логин и пароль нет
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







