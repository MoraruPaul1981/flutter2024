


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:commintprices/features/commingprices/blocarchitecture/Datalayer/entities/Entities1CMap.dart';
import 'package:flutter/material.dart';
import 'package:logger/src/logger.dart';

import '../../Businesslayer/Interfaces/IntarfaceCallBaksWidgets.dart';





/////////TODO класс ожидание ответа пинга от 1с
class ChildWidgetDontData   extends   StatelessWidget  implements   IntarfaceChildWidgetDontData {


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
  ChildWidgetDontData(Key? key,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[




          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: new EdgeInsets.only(left: 5,top:400,right: 5,bottom: 5),
                height: 80,
                width: 300,
                // color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.grey[200], //assign either here or to the container
                  borderRadius: BorderRadius.circular(24),),
                child:  Padding(
                  padding: EdgeInsets.all(2.0),
                  child:

                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(currentText, textStyle: TextStyle(color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.w200,),textAlign:  TextAlign.center,
                          colors:[Colors.black,Colors.white,Colors.grey,Colors.black] ),]
                    ,
                    pause: Duration(microseconds: 1),
                    isRepeatingAnimation: true,
                    repeatForever: false,
                  ),
                ),
              ),

            ],

          ),

          //TODO END ROW

        ],
      ),
    );
  }
















}