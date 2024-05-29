


import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:logger/src/logger.dart';

import '../data/entities/Entities1CMap.dart';
import 'widgets/WidgetWaiting/ChildWidgetSuccessData.dart';
import 'widgets/WidgetWaiting/ChildWidgetProccingDefault.dart';
import 'widgets/WidgetWaiting/ChildWidgetProccerWaiting.dart';
import 'widgets/WidgetWaiting/ChildWidgetWaitingDontData.dart';
import 'widgets/WidgetWaiting/ChildWidgetProccingError.dart';
import 'widgets/WidgetWaiting/Intarface/IntarfaceCallBaksWidgets.dart';








//TODO Виджет сотоящий из трех строк Телефон и Две Почты
class ChildWidgetCallBaks   implements IntarfaceCallBaksWidgets {


  ///TODO  методы ожидания
  @override
  Widget WidgetProccerWaiting({required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot,required  Logger logger}){
//TODO
  logger.i("starting  getWidgetProccingWait");
  IntarfaceWaiting  intarfaceWaiting= GetWidgetWaiting();
    ///TODO return
  return   intarfaceWaiting.
    getWidgetWaitingPing(context:context, snapshot:snapshot,
        alwaysStop:Colors.black,currentText:'Союз-Автодор');
  }



  ///TODO метод по умочанию
   @override
  Widget WidgetProccingDefault( {required BuildContext context,
     required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot,required  Logger logger}){
//TODO
    logger.i("starting  getWidgetProccingDefault");
    IntarfaceWaiting  intarfaceWaiting= ChildWidgetDefault();
    ///TODO return
    return   intarfaceWaiting.
    getWidgetWaitingPing(context:context, snapshot:snapshot,
        alwaysStop:Colors.black,currentText:'Союз-Автодор');
  }


  ///TODO метод по умочанию
  @override
  Widget WidgetProccingError( {required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot,required  Logger logger}){
//TODO
    logger.i("starting  getWidgetProccingError $snapshot.error.toString()");
    IntarfaceWaiting  intarfaceWaiting  = ChildGetWidgetWaitingErrors(logger);

    return intarfaceWaiting.getWidgetWaitingPing(context: context,
        snapshot: snapshot,
        alwaysStop: Colors.red,
        currentText: "Сервер выкл.!!!");
  }




  ///TODO метод есть данные
  @override
  Widget WidgetProccingNasData( {required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot,required  Logger logger}){
    //TODO
    logger.i('receiveddatafromC1CallBack ..  '+snapshot.data.toString()+'' );
    //TODO передем на экрна полученные данные
    return  ChildWidgetSuccessData().getWidgetScaffold(context:context,snapshot:snapshot,logger:logger);
  }






  ///TODO метод нет данных
  @override
  Widget WidgetProccingDontData( {required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot,required  Logger logger}){
//TODO
    logger.i("starting  getWidgetProccingDontData");
    IntarfaceWaiting  intarfaceWaiting   = ChildWidgetWaitingDontData();
    ///TODO return
    return     intarfaceWaiting.getWidgetWaitingPing(context: context,
        snapshot: snapshot,
        alwaysStop: Colors.red,
        currentText: 'Нет данных !!!');
  }




}



































