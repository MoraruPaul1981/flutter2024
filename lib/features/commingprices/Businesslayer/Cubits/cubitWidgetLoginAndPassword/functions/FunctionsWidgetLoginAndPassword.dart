
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


          ParametsServerStatus parametsServerStatus=ParametsServerStatus();

          parametsServerStatus.getlogin;
          parametsServerStatus.setlogin('sfsfsf');


               //TODO then
              /*  parametrgetPublicId.putIfAbsent('login', login as Function());
                parametrgetPublicId.putIfAbsent('password', password as Function());
                parametrgetPublicId.putIfAbsent('context', context as Function());
                parametrgetPublicId.putIfAbsent('logger', logger as Function());*/

                //TODO:сам запрос на получение PublicID И Получение Данных
               // context.read<CubitLoginPassword>().startGettingServerStatus(parametrgetPublicId:parametrgetPublicId);
                cubitLoginPassword.startGettingServerStatus(  parametsServerStatus:parametsServerStatus);

              print('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                    '  login..$login   password.....$password');

              } else {

          //TODO:сам запрос на получение PublicID И Получение Данных
         // context.read<CubitLoginPassword>().callBackDontLoginAndPassword(login:login,password:password);
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