


import 'package:commintprices/features/commingprices/blocarchitecture/Datalayer/entities/Entities1CMap.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:logger/src/logger.dart';

import '../../Businesslayer/Interfaces/IntarfaceCallBaksWidgets.dart';



//TODO Виджет сотоящий из трех строк Телефон и Две Почты
class CallBaksForParentWidgets   implements IntarfaceCallBaksForParentWidgets {
  @override
  Widget widgetProccerWaiting({required BuildContext context, required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot, required Logger logger}) {
    // TODO: implement widgetProccerWaiting
    //TODO
    logger.i("starting  getWidgetProccingWait");
    IntarfaceWaiting  intarfaceWaiting= GetWidgetWaiting();
    ///TODO return
    return   intarfaceWaiting.
    getWidgetWaitingPing(context:context, snapshot:snapshot,
        alwaysStop:Colors.black,currentText:'Союз-Автодор');
  }
  }

  @override
  Widget widgetProccingDefault({required BuildContext context, required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot, required Logger logger}) {
    // TODO: implement widgetProccingDefault
    throw UnimplementedError();
  }

  @override
  Widget widgetProccingDontData({required BuildContext context, required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot, required Logger logger}) {
    // TODO: implement widgetProccingDontData
    throw UnimplementedError();
  }

  @override
  Widget widgetProccingError({required BuildContext context, required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot, required Logger logger}) {
    // TODO: implement widgetProccingError
    throw UnimplementedError();
  }

  @override
  Widget widgetProccingNasData({required BuildContext context, required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot, required Logger logger}) {
    // TODO: implement widgetProccingNasData
    throw UnimplementedError();
  }





}



































