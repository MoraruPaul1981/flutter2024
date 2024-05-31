


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:logger/src/logger.dart';

import '../../Businesslayer/Interfaces/childinterface/IntarfaceVariablesWidgets.dart';
import '../../Datalayer/entities/Entities1CMap.dart';


/////////TODO класс ожидание ответа пинга от 1с
class ChildWidgetWaiting  extends StatelessWidget   implements IntarfaceChildWidgetWaiting   {

//TODO: переменные
  @override
  Color alwaysStop;

  @override
  BuildContext context;

  @override
  String currentText;

  @override
  AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot;

  @override
  Logger logger;


  //TODO: конструктор
  ChildWidgetWaiting( Key? key,
      {required this.alwaysStop,
      required this.context,
      required this.currentText,
      required this.snapshot,
      required this.logger}) :super (key:key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ////TODO сам виджет
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      body:Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text("Need Help ?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("Max MagiX,",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 16)),
          ),
          Container(
            child: Text("San Francisco,",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 16)),
          ),
          Container(
            child: Text("CA, USA",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 16)),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.phone),
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    child: Text("+1 8002 8002 82",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 16)),
                  )
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.email),
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    child: Text("hello@xyz.com",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 16)),
                  )
                ],
              ))
        ],
      )
      ),
    );
  }






}