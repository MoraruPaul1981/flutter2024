
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';

import '../../../../../main.dart';
import '../Interfaces/childinterface/InterfaceChildGetWidgetErrors.dart';





class BI_ChildWidgetError   implements InterfaceChildGetWidgetErrors {

  BuildContext context;
  Logger logger;
  Key? key;

  BI_ChildWidgetError({required this.context, required this.logger,required this.key});

  @override
  void theServeristurnedRereceive() {
    // TODO: implement theServeristurnedRereceive
    try{
      //TODO: при нажатии перезапускаем Получение Данных
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CommingPricesStatelessWidget(  logger: logger,key: key )));

      logger.i(' CLick FloatingActionButtonLocation  onPressed  key .. $key logger ... $logger  ' );

      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }
  }














}