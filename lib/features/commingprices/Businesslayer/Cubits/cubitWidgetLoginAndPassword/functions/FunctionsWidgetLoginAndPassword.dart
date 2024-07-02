
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../../Businesslayer/BI/Interfaces/childinterface/IntafaceChildWidgetLoginAndPassword.dart';
import '../../../../Businesslayer/BI/errors/Errors.dart';
import '../CubitLoginPassword.dart';
import '../paramets/ParametsLoginPassword.dart';




class FunctionsWidgetLoginAndPassword   implements  IntafaceChildWidgetLoginAndPassword {
late Logger logger;
  FunctionsWidgetLoginAndPassword( this. logger);
  //TODO:  после успешного полученияя статуса или нет Запускаем Основнуб программу MAIN




  @override
  void clickFloatingButtonForGetLoginAndPassword(
      int state,
      TextEditingController loginicController,
      TextEditingController passwordController,
      BuildContext context,
      CubitLoginPassword   cubitLoginPassword) {
    // TODO: implement actionFloatingActionButtonPressed
    try{

      print( '  loginicController..$loginicController   passwordController.....$passwordController');

      String  login=      processingLogin(loginicController: loginicController);
      String  password=      processingPassword(passwordController: passwordController);
      print('login .....$login  password .....$password ');

        //TODO: login and password Not NULL
        if (login!.length>3 && password!.length>3) {
                //TODO: параметры запроса
       /*   //TODO: Класс с Парметрами для передачив кдласс логин и пароль
       *       */
               ParametsServerStatus parametsServerStatus=ParametsServerStatus(login,password,context,logger);

                //TODO:сам запрос на получение Статуса Рабочий ли сервер Включен  шаг первый
                cubitLoginPassword.startGettingServerStatus(  parametsServerStatus:parametsServerStatus)
                    .then(( ServerStatus) {
                  //TODO then
                  logger.i('ServerStatus..${ServerStatus} ');

                  //TODO:сам запрос на получения PublicID  шаг Второй
                  callBackPublicIDJboss(cubitLoginPassword, parametsServerStatus);
                  logger.i('ServerStatus..${ServerStatus} ');
                  return  ServerStatus;
                }).catchError(
                        (Object error) {
                      logger.i(' get ERROR $error  ');
                    }
                );

              print('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                    '  login..$login   password.....$password');







       /*       //TODO:  Когда  логин и пароль не заполнент Вообще
       *           */
              } else {
          /*       //TODO:  Когда  логин и пароль не заполнент Вообще
       *           */
          cubitLoginPassword.callBackDontLoginAndPassword(login:login,password:password);

             print('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                    '  password..$password  password ....$password');
              }



      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }

  }


/*  //TODO: Получаем после Аунтификации Публичный АДИ, на базе логина и пароля
*      */
 Future<void> callBackPublicIDJboss(CubitLoginPassword cubitLoginPassword, ParametsServerStatus parametsServerStatus) async {
            //TODO:сам запрос на получения PublicID  шаг Второй
    try{
    cubitLoginPassword. startGettingServerPublicId(parametsServerStatus:parametsServerStatus)
        .then(( getJbossPublicId) {
      //TODO then
      logger.i('PublicId..${getJbossPublicId} ');
      return getJbossPublicId;
    }).catchError(
            (Object error) {
          logger.i(' get ERROR $error  ');
        }
    );

    //TODO error
  }   catch (e, stacktrace) {
print(' get ERROR $e get stacktrace $stacktrace ');
//TODO: Gradle Error
Errors errors=Errors();
errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
}
  }




//TODO Oбработка логина
  @override
  String  processingLogin (   { required  TextEditingController loginicController }){
    late String  _login  ;
    try{
      //TODO
      _login=  loginicController.text ?? "" ;

      print(' _login .. $_login ' );

      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
    return _login;
  }






  //TODO Oбработка логина
  @override
  String  processingPassword (   { required  TextEditingController passwordController }){
    late String  _password  ;
    try{
      //TODO
      _password=  passwordController.text ?? "" ;
      print(' _password .. $_password ' );
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
    return _password;
  }

























































}