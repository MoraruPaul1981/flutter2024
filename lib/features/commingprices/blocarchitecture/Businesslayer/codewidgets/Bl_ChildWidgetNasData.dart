
import 'package:commintprices/features/commingprices/blocarchitecture/Datalayer/entities/Entities1CMap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/async.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';
import '../../../../../main.dart';
import '../Interfaces/childinterface/IntafaceChildWidgetSuccessData.dart';
import '../Interfaces/childinterface/IntarfaceVariablesWidgets.dart';
import '../Interfaces/childinterface/InterfaceChildWidgetNasData.dart';
import '../errors/Errors.dart';

//TODO: класс бизнес логика для успещного получение данных от 1С
class Bl_ChildWidgetNasData implements InterfaceChildWidgetNasData   {



  @override
  BuildContext context;

  @override
  Key? key;

  @override
  Logger logger;


//TODO: конструктор для бизнес логики усершного получение данных
  Bl_ChildWidgetNasData({required this.context, required this.logger,required this.key});

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
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }







}