
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../../Businesslayer/BI/Interfaces/childinterface/IntafaceChildWidgetLoginAndPassword.dart';
import '../../../../Businesslayer/BI/errors/Errors.dart';
import '../CubitLoginPassword.dart';




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
  void clickFloatingButtonForGetLoginAndPassword(
      int state,
      TextEditingController _loginicController,
      TextEditingController _passwordController) {
    // TODO: implement actionFloatingActionButtonPressed
    try{
      String  login=      processingLogin(loginicController: _loginicController);
      String  password=      processingPassword(passwordController: _passwordController);
      logger.i('login .....$login  password .....$password ');
      logger.i('  login..$login.length   password.....$password.length');


        //TODO: login and password Not NULL
        if (login!.length>3 && password!.length>3) {
                //TODO: параметры запроса
                Map<String, dynamic> parametrgetPublicId={};
                parametrgetPublicId.putIfAbsent('getlogin', login as Function());
                parametrgetPublicId.putIfAbsent('getpassword', password as Function());

                //TODO:сам запрос на получение PublicID И Получение Данных
                context.read<CubitLoginPassword>().startGettingServerStatus(parametrgetPublicId:parametrgetPublicId);

                logger.i('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                    '  login..$login   password.....$password');

              } else {

          //TODO:сам запрос на получение PublicID И Получение Данных
          context.read<CubitLoginPassword>().callBackDontLoginAndPassword(login:login,password:password);

                logger.i('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                    '  password..$password  password ....$password');
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