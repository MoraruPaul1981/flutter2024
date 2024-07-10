
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';


import '../../../Use case/Interfaces/childinterface/IntafaceChildWidgetLoginAndPassword.dart';
import '../../../Use case/errors/Errors.dart';
import '../CubitLoginPassword.dart';
import '../paramets/ParametsLoginServerPassword.dart';




class FunctionsWidgetLoginAndPassword   implements  IntafaceChildWidgetLoginAndPassword {
late Logger logger;
  FunctionsWidgetLoginAndPassword( this. logger);
  //TODO:  после успешного полученияя статуса или нет Запускаем Основнуб программу MAIN




  @override
  Future<void> clickFloatingButtonForGetLoginAndPassword(
      int state,
      TextEditingController loginicController,
      TextEditingController passwordController,
      BuildContext context,
      CubitLoginPassword   cubitLoginPassword) async {
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


                //TODO:get State 1c
             int ServerStatus1C= await  cubitLoginPassword.startCubitServerStatus1C(  parametsServerStatus:parametsServerStatus)
                 .catchError(
                  (Object error) {
                  logger.i(' get ERROR $error  ');
                       });
          logger.i('ServerStatus1C..${ServerStatus1C} ');

          //TODO:get State Server On and Off
          int ServerStatusJboss= await  cubitLoginPassword.startCubitServerStatusJboss(  parametsServerStatus:parametsServerStatus)
              .catchError(
                  (Object error) {
                logger.i(' get ERROR $error  ');
              });
          logger.i('ServerStatusJboss..${ServerStatusJboss} ');






          //TODO:get callback Статус Сервера
            if (ServerStatus1C ==200) {

            /*     //TODO:  класс параметров получение Публичного ID
               *         */
            ParametsServerPublicID parametsServerPublicID = ParametsServerPublicID(login, password, context, logger);
            //TODO:get callback Public Id
            int    PublicID =await      callBackPublicIDJboss(cubitLoginPassword, parametsServerPublicID, ServerStatus1C);
            logger.i('PublicID..${PublicID} ....ServerStatus1C..${ServerStatus1C} ');



       /*     //TODO: if publicid arrived successfully
       *         */
            if (PublicID>0) {
              logger.i('PublicID..${PublicID} ....ServerStatus1C..${ServerStatus1C} ');

         /*     //TODO:Публичный ключ пришел пустой , Это ошибка в аунтифтикайии ЛОгин и пароль не правильный
         *         */
            } else {
              /*     //TODO:Публичный ключ пришел пустой , Это ошибка в аунтифтикайии ЛОгин и пароль не правильный
         *         */
              cubitLoginPassword. startCubitdidNotAskforAuthenticationLoginAndPassword( PublicID);
              logger.i('PublicID..${PublicID} ....ServerStatus1C..${ServerStatus1C} ');

            }


              //TODO:get callback Статус Сервера Выключин
          }else{
              //TODO:get callback Статус Сервера Выключин
            logger.i('  ....ServerStatus1C..${ServerStatus1C} ');

            cubitLoginPassword.startCubitLoginAndPasswordServerDontWorker( ServerStatus1C);

          }
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
 Future<int> callBackPublicIDJboss(CubitLoginPassword cubitLoginPassword,
     ParametsServerPublicID parametsServerPublicID,int ServerStatus) async {
            //TODO:сам запрос на получения PublicID  шаг Второй
   late int  PublicID;
   try{
   /*   //TODO:  если статус ПРИЩШЕЛ 21 то тогда запускаем получение Public ID
   *        */
        PublicID =await cubitLoginPassword.startCubitServerPublicId(parametsServerPublicID:   parametsServerPublicID)
           .catchError(
                (Object error) {
              logger.i(' get ERROR $error  ');
            }
        );
        logger.i('ServerStatus..${ServerStatus} ... PublicID..${PublicID} ....  ');
    //TODO error
  }   catch (e, stacktrace) {
print(' get ERROR $e get stacktrace $stacktrace ');
//TODO: Gradle Error
Errors errors=Errors();
errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
}
return PublicID ?? 0  ;
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