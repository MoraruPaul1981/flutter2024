
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


  @override
  int getCallWidgetFrom1cServerPublicID({required Map<String, dynamic> parametrgetPublicId }) {
    // TODO: implement getCallWidgetFrom1cServerPublicID
    try{
      logger.i(' getCallWidgetFrom1cServerPublicID  parametrgetPublicId .. $parametrgetPublicId ' );

      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
    return 0;
  }

  @override
  Future<int> getFutureCallWidgetFrom1cServerPublicID({required Map<String, dynamic> parametrgetPublicId }) {
    // TODO: implement getFutureCallWidgetFrom1cServerPublicID
    try{

      logger.i(' getFutureCallWidgetFrom1cServerPublicID  parametrgetPublicId .. $parametrgetPublicId ' );

      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
    return Future<int>.value(0);
  }

  @override
  void callbAckreactiontosomeonewhocameStatus({ required int state}) {
    // TODO: implement callbAckreactiontosomeonewhocameStatus
    try{
    if(state==0){
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
                      color: Colors.blue[300],
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child:
                        Text(
                          'Логин/Пароль не правильные !!!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            fontFamily: 'Raleway',
                            color: Colors.grey.shade600,
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
      /* //TODO: погда пришел Публинчый ID
     *     */
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