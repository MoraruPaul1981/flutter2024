
import 'dart:isolate';
import 'dart:math';

import 'package:commintprices/features/commingprices/Businesslayer/Cubits/cubitWidgetLoginAndPassword/paramets/ParametsLoginServerPassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../Datalayer/remote/FuturesPing1cServer.dart';

import '../../Use case/adressJboss/getAdress.dart';
import '../../Use case/errors/Errors.dart';
import 'EmitsLoginPassword.dart';



//TODO: CountterCubitFuture
class CubitLoginPassword extends Cubit<int>  {
  CubitLoginPassword( initialState):super( initialState);

 /* //TODO:CubitLoginPassword
 *     */
  @override
  void onError(Object error, StackTrace stackTrace) {
    print('error ... ${error}  password ... ${stackTrace} ');
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    print('error ... ${error}  stackTrace ... ${stackTrace} ');
  }

  @override
  void onChange(Change<int> change) {
    print('change ... ${change}  ');
  }










/*//TODO: RUN
*    FUTURE  ServerStatus
* */

  Future<int> startCubitServerStatus({required ParametsServerStatus parametsServerStatus}) async {
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

      ServerStatus =await Future<String>.value(futureServerStatus(parsedUrl, BigInt.from(0),0) )
          .catchError(
              (Object error) {
            print(' get ERROR $error  ');
          })      ;

      print('ServerStatus ${ServerStatus} ') ;
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
    return  int.parse(ServerStatus) ;
    }



/*//TODO: Получаем статус сервера через ISolate
*    */
  Future<String> futureServerStatus(     Uri parsedUrl,  BigInt Uuid,int IdUser ) async {//TODO: {required Map<String, dynamic> parametrgetPublicId}
    // TODO: implement futurePublicID
     final serverStatus = await Isolate.run(() async {
      FuturesPing1cServer futuresPing1cServer=FuturesPing1cServer();
     String? ServerStatus = await  futuresPing1cServer.CallBackPing(parsedUrl ,    Uuid, IdUser)   ;
      print(' Finifh()..  ServerStatus $ServerStatus  '+" Isolate.current.debugName.toString() "+Isolate.current.debugName.toString());
      return ServerStatus;
    });
    return serverStatus;
  }













  /*//TODO: RUN
*    FUTURE  Public ID
* */
  Future<int> startCubitServerPublicId({required ParametsServerPublicID parametsServerPublicID}) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    late int PublicID;
    try{
     Future<int> futureValuePublicID =    Future<int>.value(futurePublicID(parametsServerPublicID:   parametsServerPublicID))
     .then((futureValuePublicID) {
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
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
    return  PublicID ?? 0;
  }

  Future<int> futurePublicID({required ParametsServerPublicID parametsServerPublicID}) async {
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







  Future<void> startCubitLoginAndPasswordEmtyDont( String login,String password) async {
    // TODO: implement startGettingLoginAndPasswordEmtyDont
    try{
      print('login ... ${login}  password ... ${password} ');

      EmitsLoginPassword(this).   emitBackUIEmptyLoginAndPassword();
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }





  Future<void> startCubitLoginAndPasswordServerDontWorker( int ServerStatus) async {
    // TODO: implement startGettingLoginAndPasswordEmtyDont
    try{
      print('  password ... ${ServerStatus} ');

      EmitsLoginPassword(this).   emitBackUIDontServerStatus();
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }


  Future<void> startCubitdidNotAskforAuthenticationLoginAndPassword( int PublicID) async {
    // TODO: implement startGettingLoginAndPasswordEmtyDont
    try{
      print('  PublicID ... ${PublicID} ');

      EmitsLoginPassword(this).   emitBackUIAuthenticationPublicId(PublicID);
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








