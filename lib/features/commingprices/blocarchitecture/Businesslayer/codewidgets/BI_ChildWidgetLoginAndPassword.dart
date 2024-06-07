
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';

import '../../../../../main.dart';
import '../Interfaces/Interfacebloc/Interfacebloc.dart';
import '../Interfaces/childinterface/IntafaceChildWidgetLoginAndPassword.dart';
import '../Interfaces/childinterface/InterfaceChildGetWidgetErrors.dart';
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
    if(state>0){
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
                        color: Colors.redAccent,//Colors.blue[300]
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child:
                        Text(
                          'Логин/Пароль не правильные !!!',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0,
                            fontFamily: 'Raleway',
                            color: Colors.white,//TODO Colors.grey.shade600
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
    }else{
      /* //TODO: погда пришел Публинчый ID  с этого места мы запускаеем саму программу так как приешел публичный ID SUCCESS
     *     */
//TODO метод запускаем Саму программу после успешно аунтификации
      afterSuccessfullaunchthemainprogram(state: state,context: context);

      logger.i(' state .. $state ' );
    }

    //TODO error
  }   catch (e, stacktrace) {
  print(' get ERROR $e get stacktrace $stacktrace ');
  //TODO: Gradle Error
  Errors errors=Errors();
  errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
}
  }





















}