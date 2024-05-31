


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:logger/src/logger.dart';

import '../../Businesslayer/Interfaces/childinterface/IntarfaceVariablesWidgets.dart';
import '../../Datalayer/entities/Entities1CMap.dart';


/////////TODO класс ожидание ответа пинга от 1с
class ChildWidgetAuthorizationUsers  extends StatelessWidget   implements IntarfaceChildWidgetAuthorizationUsers   {

//TODO: переменные

  @override
  BuildContext context;

  @override
  Logger logger;


  //TODO: конструктор
  ChildWidgetAuthorizationUsers( Key? key,
      {required this.context,
      required this.logger}) :super (key:key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ////TODO сам виджет
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      body:Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

///TODO:   аунтификация пользователя



            //TODO END ROW

          ],
        ),
      ),
    );
  }








}