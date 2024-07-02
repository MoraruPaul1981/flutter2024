
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import '../../../BI/errors/Errors.dart';
import '../CubitLoginPassword.dart';
import '../functions/FunctionsWidgetLoginAndPassword.dart';




class BL_statesWidgetsLoginPassword {

  /* //TODO:переменные
 *     */
  late  Logger logger;
  late  BuildContext context;
  late Key? key;
/*
 //TODO:login GET*/
  final _loginicController = TextEditingController();
  /*
 //TODO:password GET*/
  final _passwordController = TextEditingController();
  ///
  ///TODO  аунтификация
  BL_statesWidgetsLoginPassword({ required this.logger,  required this.context});

/*//TODO:  метод запуск аунтификации логин и пароль
*    */
  void startingAyntificationLogingAdnPassword(         int state ,BuildContext context ,CubitLoginPassword   cubitLoginPassword,
      { required  TextEditingController loginicController  ,  required TextEditingController passwordController }) {
    try{
/*TODO: запускаем начало Аунтификации нажатие на кнопку
*  */
      FunctionsWidgetLoginAndPassword( logger ).clickFloatingButtonForGetLoginAndPassword(state, loginicController, passwordController,context,    cubitLoginPassword);

      logger.i('state .....${state}  loginicController .....${loginicController} passwordController .....${passwordController} ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
  }







  void completeBlocConsumerLoginandPassword(int state ) {
    try{
      switch (state){
      /* TODO: какой статус пришел от Cubit login and password
      *   */
        case 1:
        /*  //TODO:логин и пароль не заполенн
        *      */
          callBackLoginAndPasswordEmpty(state:state,context: context);
          logger.i('state .....$state');

        case 2:
        /*  //TODO:сервер выключени
        *      */
          callBackServerRunAndStop(state:state,context: context);
          logger.i('state .....$state');


        case 3:
        /*  //TODO:логин и пароль не правильный
        *      */
          callBackLoginAndPasswordNotCorrect(state:state,context: context);
          logger.i('state .....$state');

        case 21:
        /*  //TODO:логин и пароль не правильный
        *      */
          logger.i('state .....$state');



        case 200:
        /*  //TODO:Успешная Аунтификация логин и пароль заходим в приложение
        *      */
          callBackSuccessfuLoginAndPasswordAuthentication(state:state,context: context);
          logger.i('state .....$state');



        default:
          logger.i('state .....$state');
      }

      logger.i('state .....$state');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
  }



  void resetEmitCubitLoginPassword( CubitLoginPassword   cubitLoginPassword ,int state ) {
    try{
      cubitLoginPassword.emit(0);

      logger.i('resetEmitCubitLoginPassword .....${cubitLoginPassword} ... state ${state}');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
  }



  //TODO: метод  Получение статуса от сервера state
  @override
  void callBackServerRunAndStop({ required int state,required BuildContext context}) {
    // TODO: implement callbAckreactiontosomeonewhocameStatus
    try{
      logger.i(' state .. $state ' );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          elevation: 10,
          behavior: SnackBarBehavior.fixed,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.white12, width: 1),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          backgroundColor:Colors.blue[300] ,
          content: Container(
            margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
            padding: const EdgeInsets.symmetric(horizontal: 2),
            color: Colors.blue[300],//Colors.blue[300] //,redAccent
            width: double.infinity,
            height: 30,
            child: Center(
              child: Text(
                'Сервер выкл !!!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0,
                  fontFamily: 'Raleway',
                  color: Colors.grey[200],//TODO Colors.grey.shade600
                ),
                textAlign: TextAlign.center,
              ),
            ),

          ),
          duration: const Duration(milliseconds: 1300),
        ),);

      /* //TODO: погда пришел Публинчый ID
     *     */

      /* //TODO: погда пришел Публинчый ID  с этого места мы запускаеем саму программу так как приешел публичный ID SUCCESS
     *     */
      logger.i(' state .. $state ' );


      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }


  void callBackLoginAndPasswordEmpty({required int state, required BuildContext context}) {
    // TODO: implement calldoesnottriggerActionNoPoginandPassword
    try{
      logger.i(' state .. $state ' );


/*
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          margin: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: MediaQuery.of(context).size.width * 0.27,
          ),
          elevation: 5.0,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0),
          ),
          content: Wrap(
            children: const [
              Center(
                child: Text(
                  'Please enter valid email',
                ),
              ),
            ],
          ),
        ),
      );
*/

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          elevation: 10,
          behavior: SnackBarBehavior.fixed,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.white12, width: 1),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          backgroundColor:Colors.blue[300] ,
          content: Container(
            margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
            padding: const EdgeInsets.symmetric(horizontal: 2),
            color: Colors.blue[300],//Colors.blue[300] //,redAccent
            width: double.infinity,
            height: 30,
            child: Center(
              child: Text(
                'Логин/Пароль не заполнен !!!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0,
                  fontFamily: 'Raleway',
                  color: Colors.grey[200],//TODO Colors.grey.shade600
                ),
                textAlign: TextAlign.center,
              ),
            ),

          ),
          duration: const Duration(milliseconds: 1300),
        ),);


      /* //TODO: погда пришел Публинчый ID
     *     */

      /* //TODO: погда пришел Публинчый ID  с этого места мы запускаеем саму программу так как приешел публичный ID SUCCESS
     *     */
      logger.i('   void calldoesnottriggerActionNoPoginandPassword()  state .. $state ' );


      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }








  void callBackLoginAndPasswordNotCorrect({required int state, required BuildContext context}) {
    // TODO: implement calldoesnottriggerActionNoPoginandPassword
    try{
      logger.i(' state .. $state ' );


/*
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          margin: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: MediaQuery.of(context).size.width * 0.27,
          ),
          elevation: 5.0,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0),
          ),
          content: Wrap(
            children: const [
              Center(
                child: Text(
                  'Please enter valid email',
                ),
              ),
            ],
          ),
        ),
      );
*/

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          elevation: 10,
          behavior: SnackBarBehavior.fixed,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.white12, width: 1),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          backgroundColor:Colors.blue[300] ,
          content: Container(
            margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
            padding: const EdgeInsets.symmetric(horizontal: 2),
            color: Colors.blue[300],//Colors.blue[300] //,redAccent
            width: double.infinity,
            height: 30,
            child: Center(
              child: Text(
                'Логин/Пароль не правильный  !!!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0,
                  fontFamily: 'Raleway',
                  color: Colors.grey[200],//TODO Colors.grey.shade600
                ),
                textAlign: TextAlign.center,
              ),
            ),

          ),
          duration: const Duration(milliseconds: 1300),
        ),);


      /* //TODO: погда пришел Публинчый ID
     *     */

      /* //TODO: погда пришел Публинчый ID  с этого места мы запускаеем саму программу так как приешел публичный ID SUCCESS
     *     */
      logger.i('   void calldoesnottriggerActionNoPoginandPassword()  state .. $state ' );


      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }



  void callBackSuccessfuLoginAndPasswordAuthentication({required int state, required BuildContext context}) {
    // TODO: implement calldoesnottriggerActionNoPoginandPassword
    try{
      logger.i(' state .. $state ' );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.blue[300],
          margin: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 40.0,
          ),
          elevation: 5.0,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0),
          ),
          content:
          Text(
            'Успешная аунтификация !!!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13.0,
              fontFamily: 'Raleway',
              color: Colors.grey[200],//TODO Colors.grey.shade600
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
      logger.i('   callBackSuccessfuLoginAndPasswordAuthentication .. $state ' );


      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }









}

//TODO : круглая пнопка снизу ОК





