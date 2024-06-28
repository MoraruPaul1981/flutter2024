
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
  final FunctionsWidgetLoginAndPassword  functionsWidgetLoginAndPassword=new FunctionsWidgetLoginAndPassword(  );

  ///TODO  аунтификация
  BL_statesWidgetsLoginPassword({ required this.logger,  required this.context});

/*//TODO:  метод запуск аунтификации логин и пароль
*    */
  void startingAyntificationLogingAdnPassword(int state ,BuildContext context ,CubitLoginPassword   cubitLoginPassword) {
    try{

      functionsWidgetLoginAndPassword.clickFloatingButtonForGetLoginAndPassword(state, _loginicController, _passwordController,context,    cubitLoginPassword);

      logger.i('state .....${state}  _loginicController .....${_loginicController} _passwordController .....${_passwordController} ');
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
        case 0:
          logger.i('state .....$state');

        case 10:
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





}

//TODO : круглая пнопка снизу ОК





