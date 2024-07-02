
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../Businesslayer/BI/Interfaces/childinterface/IntafaceChildWidgetLoginAndPassword.dart';
import '../../../../Businesslayer/BI/errors/Errors.dart';
import '../CubitLoginPassword.dart';
import '../paramets/ParametsLoginServerPassword.dart';




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


       /*   //TODO: Класс с Парметрами для передачив кдласс логин и пароль #1
       *       */
          ParametsServerStatus parametsServerStatus=ParametsServerStatus(login,password,context,logger);
      /* TODO: устанока параментов для параметров Статус Сервера
      *   */
          parametsServerStatus.setlogin(login);
          parametsServerStatus.setpassword(password);
          parametsServerStatus.setcontext(context);
          parametsServerStatus.setlogger(logger);


                //TODO:сам запрос на получение Статуса Рабочий ли сервер Включен  шаг первый
                cubitLoginPassword.startCubitServerStatus(  parametsServerStatus:parametsServerStatus)
                    .then(( ServerStatus) {
                  //TODO then
                  logger.i('ServerStatus..${ServerStatus} ');


                  //TODO:сам запрос на получения PublicID  шаг Второй  статус пришел 21 не пустой #2
                  if (ServerStatus >=21) {

               /*     //TODO:  класс параметров получение Публичного ID
               *         */
                    ParametsServerPublicID parametsServerPublicID = ParametsServerPublicID(
                        login, password, context, logger);

                    callBackPublicIDJboss(
                        cubitLoginPassword, parametsServerPublicID,
                        ServerStatus);
                  }
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
          cubitLoginPassword.startCubitLoginAndPasswordEmtyDont( login,password);

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
 Future<void> callBackPublicIDJboss(CubitLoginPassword cubitLoginPassword,
     ParametsServerPublicID parametsServerPublicID,int ServerStatus) async {
            //TODO:сам запрос на получения PublicID  шаг Второй
    try{
   /*   //TODO:  если статус ПРИЩШЕЛ 21 то тогда запускаем получение Public ID
   *        */
      logger.i('ServerStatus..${ServerStatus} ');
        cubitLoginPassword.startCubitServerPublicId(parametsServerPublicID:   parametsServerPublicID)
            .then((getJbossPublicId) {
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