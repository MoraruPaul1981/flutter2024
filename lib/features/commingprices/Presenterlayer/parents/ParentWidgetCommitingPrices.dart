
import 'package:commintprices/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/src/logger.dart';

import '../../Datalayer/entities/Entities1CMap.dart';
import '../../Datalayer/remote/FuturesPing1cServer.dart';
import '../childs/ChildGetWidgetErrors.dart';
import '../childs/ChildWidgetDefault.dart';
import '../childs/ChildWidgetNasData.dart';
import '../childs/ChildWidgetSuccessData.dart';
import '../childs/ChildWidgetWaiting.dart';









//TODO Виджет сотоящий из трех строк Телефон и Две Почты
class ParentWidgetCommitingPrices extends State<WidgetStateful> {
  Logger logger;
  Key? key;
  ParentWidgetCommitingPrices({this.key, required this.logger } ) ;

  @override
  Widget build(BuildContext context) {
    //TODO starting Future
    logger.i('  stating Ping FutureBuilder  ');
    return getFutureBuilder();
  }

  //TODO метод получени пинга сервер аи в будущем получени еданных 1С
  FutureBuilder<List<Map<String, List<Entities1CMap>>>> getFutureBuilder() {

    ///TODO return Widget
    late Widget widgetWatingCallBack;


   ///TODO FutureBuilder
    return FutureBuilder<List<Map<String, List<Entities1CMap>>>>(
      //TODO get JSON PING ot 1C
      future:   FuturesPing1cServer(). getResponse1c(context:context, logger: logger),
      builder: (BuildContext context, AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot) {

        ////TODO В  waiting
        if (snapshot.connectionState == ConnectionState.waiting) {
          //TODO Возврат по Ожидания
          widgetWatingCallBack =   ChildWidgetWaiting(key,context:context, snapshot:snapshot, alwaysStop:Colors.black,currentText:'Союз-Автодор', logger: logger);
          logger.i('napshot.connectionState$snapshot.connectionState');
          //TODO return
          return widgetWatingCallBack;

        }

        ////TODO В  Сервер закончил Обработки
        if (snapshot.connectionState == ConnectionState.done) {
          logger.i('napshot.connectionState$snapshot.connectionState');
          ///
          ///
          ///TODO: когда нет ошибки
          ///
          if (!snapshot.hasError) {
            var  receiveddatafromC1=snapshot.data as   List<Map<String, List<Entities1CMap>>>;
            logger.i('receiveddatafromC1.hasData...$receiveddatafromC1');

            ///TODO пришол ПИНГ УСпешный
            if (   snapshot.hasData && receiveddatafromC1.length>0) {
              //TODO Возврат Данные ПРИШЛИ
              widgetWatingCallBack =    ChildWidgetSuccessData(key,logger:logger,snapshot:snapshot,context:context,receiveddatafromC1:receiveddatafromC1);

              logger.i('snapshot.hasData...$snapshot.hasData'+'isArray.length...$receiveddatafromC1.length'
                  +'napshot.connectionState$snapshot.connectionState');
              return widgetWatingCallBack;


              //TODO ПИНГ Данные НЕТ
            } else {
              logger.i('napshot.connectionState$snapshot.connectionState');
              //TODO   Данных  нет
              widgetWatingCallBack =   ChildWidgetNasData(key,context:context,currentText:"Данных нет !!!",snapshot:snapshot,logger:logger);

              logger.i('snapshot.hasData...$snapshot.hasData'+'receiveddatafromC1.length...$receiveddatafromC1.length'
                  +'napshot.connectionState$snapshot.connectionState');
              //TODO return ERROR
              return widgetWatingCallBack;

            }





       //TODO: ERROR
          }else{
            //TODO   ERROR
           widgetWatingCallBack =   ChildGetWidgetErrors(key,context:context,currentText:"Сервер выкл. !!!",snapshot:snapshot,logger:logger);
            logger.i('snapshot.hasData...$snapshot.hasData'+'receiveddatafromC1.length. $snapshot.connectionState');
              return widgetWatingCallBack;
          }


        }else{
          ///TODO сгенерировальсь Error
          if (snapshot.hasError) {
            //TODO   ERROR
            widgetWatingCallBack =   ChildGetWidgetErrors(key,context:context,currentText:"Сервер выкл. !!!",snapshot:snapshot,logger:logger);
            logger.i('snapshot.hasData...$snapshot.hasData'+'receiveddatafromC1.length. $snapshot.connectionState');
            return widgetWatingCallBack;
          }
        }



        
        //TODO DEFALUT   ПО Деволту рабоатет когда ни какой код еще не сработал
        logger.i('napshot.connectionState$snapshot.connectionState');
        //TODO нет DEFALUT
        widgetWatingCallBack = ChildWidgetDefault(key,context:context, snapshot:snapshot, alwaysStop:Colors.black,currentText:'Союз-Автодор', logger: logger);
        //TODO return ERROR
        return widgetWatingCallBack;


    }, // TODO метод который и делать пинг с сервером

    );
  }



}



































