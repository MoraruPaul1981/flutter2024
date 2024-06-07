
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../Cubits/bloccubitInt/cubitLoginPassword.dart';
import '../Interfaces/childinterface/IntafaceChildWidgetLoginAndPassword.dart';
import '../errors/Errors.dart';


class BI_ChildWidgetLoginAndPassword   implements  IntafaceChildWidgetLoginAndPassword {


  @override
  BuildContext context;

  @override
  Key? key;

  @override
  Logger logger;

  BI_ChildWidgetLoginAndPassword({required this.context, required this.logger,required this.key});

  //TODO:  после успешного полученияя статуса или нет Запускаем Основнуб программу MAIN
  @override
  void afterSuccessfullaunchthemainprogram({required int state,required BuildContext context}) {
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
  void callbAckreactiontosomeonewhocameStatus({ required int state,required BuildContext context}) {
    // TODO: implement callbAckreactiontosomeonewhocameStatus
    try{
      logger.i(' state .. $state ' );
      Scaffold.of(context).showBottomSheet(
              (BuildContext context) {
             /*   //TODO:
             *     GestureDetector   */
              return  GestureDetector(
                    onTap: (){
                      print("Container clicked");
                      Navigator.pop(context);
                    },
                    child:    Container(
                        color: Colors.blue[300],//Colors.blue[300] //,redAccent
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child:
                        Text(
                          'Логин/Пароль не правильные !!!',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                            fontFamily: 'Raleway',
                            color: Colors.black,//TODO Colors.grey.shade600
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                );
              },
      );

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

  @override
  void calldoesnottriggerActionNoPoginandPassword({required int state, required BuildContext context}) {
    // TODO: implement calldoesnottriggerActionNoPoginandPassword
    try{
      logger.i(' state .. $state ' );
      Scaffold.of(context).showBottomSheet(
            (BuildContext context) {
          /*   //TODO:
             *     GestureDetector   */
          return  GestureDetector(
            onTap: (){
              print("Container clicked");
              Navigator.pop(context);
            },
            child:    Container(
              color: Colors.blue[300],//Colors.blue[300] //,redAccent
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child:
                Text(
                  'Логин/Пароль не заполнен !!!',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    fontFamily: 'Raleway',
                    color: Colors.black,//TODO Colors.grey.shade600
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      );

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

  @override
  void actionFloatingActionButtonPressed({required int state, required BuildContext context, required String getlogin, required String getpassword}) {
    // TODO: implement actionFloatingActionButtonPressed
    try{
      if (getlogin.length>3 && getpassword.length>3) {
        //TODO: параметры запроса
        Map<String, dynamic> parametrgetPublicId={};
        parametrgetPublicId.putIfAbsent('getlogin', getlogin as Function());
        parametrgetPublicId.putIfAbsent('getpassword', getpassword as Function());
        //TODO:сам запрос
        context.read<CubitLoginPassword>().getbasedonloginandpasswordPublicID(parametrgetPublicId:parametrgetPublicId);

        logger.i('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
            '  getlogin.length..$getlogin.length   getpassword.length.....$getpassword.length');
      } else {

        //TODO: дизайн обработка смены статуса
        calldoesnottriggerActionNoPoginandPassword(state: state,context: context);

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




















}