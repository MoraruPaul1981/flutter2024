
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../../Businesslayer/BI/Interfaces/childinterface/IntafaceChildWidgetLoginAndPassword.dart';
import '../../../../Businesslayer/BI/errors/Errors.dart';
import '../cubit/CubitLoginPassword.dart';



class FunctionsWidgetLoginAndPassword   implements  IntafaceChildWidgetLoginAndPassword {


  @override
  BuildContext context;

  @override
  Key? key;

  @override
  Logger logger;

  FunctionsWidgetLoginAndPassword({required this.context, required this.logger,required this.key});

  //TODO:  после успешного полученияя статуса или нет Запускаем Основнуб программу MAIN
  @override
  void callBackSuccessPublicID({required int state,required BuildContext context}) {
    // TODO: implement afterSuccessfullaunchthemainprogram
    try{
      logger.i(' afterSuccessfullaunchthemainprogram  state .. $state ' );
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
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


  void callBackDontLoginAndPassword({required int state, required BuildContext context}) {
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














  @override
  void clickFloatingButtonForGetLoginAndPassword(String? getlogin,  String? getpassword ,
      {required int state, required BuildContext context}) {
    // TODO: implement actionFloatingActionButtonPressed
    try{
      logger.i('  getlogin.length..$getlogin.length   getpassword.length.....$getpassword.length');

        //TODO: login and password Not NULL
        if (getlogin!.length>3 && getpassword!.length>3) {
                //TODO: параметры запроса
                Map<String, dynamic> parametrgetPublicId={};
                parametrgetPublicId.putIfAbsent('getlogin', getlogin as Function());
                parametrgetPublicId.putIfAbsent('getpassword', getpassword as Function());

                //TODO:сам запрос на получение PublicID И Получение Данных
                context.read<CubitLoginPassword>().startGettingServerStatus(parametrgetPublicId:parametrgetPublicId);

                logger.i('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                    '  getlogin.length..$getlogin.length   getpassword.length.....$getpassword.length');

              } else {

                //TODO: дизайн обработка смены статуса
                callBackDontLoginAndPassword(state: state,context: context);

                logger.i('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                    '  getlogin.length..$getlogin.length   getpassword.length.....$getpassword.length');
              }

      logger.i(' state .. $state ' );

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

          logger.i(' _login .. $_login ' );

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
      logger.i(' _password .. $_password ' );
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