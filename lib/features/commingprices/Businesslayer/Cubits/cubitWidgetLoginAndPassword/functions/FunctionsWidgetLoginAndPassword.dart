
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../../Businesslayer/BI/Interfaces/childinterface/IntafaceChildWidgetLoginAndPassword.dart';
import '../../../../Businesslayer/BI/errors/Errors.dart';
import '../CubitLoginPassword.dart';




class FunctionsWidgetLoginAndPassword   implements  IntafaceChildWidgetLoginAndPassword {

  FunctionsWidgetLoginAndPassword( );
  //TODO:  после успешного полученияя статуса или нет Запускаем Основнуб программу MAIN




  @override
  void clickFloatingButtonForGetLoginAndPassword(
      int state,
      TextEditingController _loginicController,
      TextEditingController _passwordController,
      BuildContext context) {
    // TODO: implement actionFloatingActionButtonPressed
    try{
      String  login=      processingLogin(loginicController: _loginicController);
      String  password=      processingPassword(passwordController: _passwordController);
      print('login .....$login  password .....$password ');

        //TODO: login and password Not NULL
        if (login!.length>3 && password!.length>3) {
                //TODO: параметры запроса
                Map<String, dynamic> parametrgetPublicId={};
                parametrgetPublicId.putIfAbsent('getlogin', login as Function());
                parametrgetPublicId.putIfAbsent('getpassword', password as Function());

                //TODO:сам запрос на получение PublicID И Получение Данных
                context.read<CubitLoginPassword>().startGettingServerStatus(parametrgetPublicId:parametrgetPublicId);

              print('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                    '  login..$login   password.....$password');

              } else {

          //TODO:сам запрос на получение PublicID И Получение Данных
          context.read<CubitLoginPassword>().callBackDontLoginAndPassword(login:login,password:password);

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