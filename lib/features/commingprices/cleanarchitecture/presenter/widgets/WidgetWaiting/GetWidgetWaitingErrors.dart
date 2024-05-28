


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:commintprices/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/src/logger.dart';

import '../../../data/entities/Entities1CMap.dart';
import 'Intarface/IntarfaceWaiting.dart';




/////////TODO класс ожидание ответа пинга от 1с
class GetWidgetWaitingErrors  implements   IntarfaceWaiting {



  //TODO Виджет ожидание пипнга от сервера 1С
  @override
  Widget getWidgetWaitingPing({required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot,required Color alwaysStop,required String currentText}){

    ////TODO сам виджет
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[



           Container(
              alignment: Alignment.center,
              margin: new EdgeInsets.only(left: 5,top:5,right: 5,bottom: 5),
              // color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.grey[200], //assign either here or to the container
                borderRadius: BorderRadius.circular(24),),
              child:  Padding(
                padding: EdgeInsets.all(2.0),
                child: AnimatedTextKit(
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


          Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(left: 5,top:5,right: 5,bottom: 5),
            // color: Colors.red,
            decoration: BoxDecoration(
              color: Colors.grey[200], //assign either here or to the container
              borderRadius: BorderRadius.circular(24),),
            child:  Padding(
              padding: EdgeInsets.all(2.0),
              child: Card(
                margin: EdgeInsets.all(5.0),
                color: Colors.white,
                child: ListTile(
                    leading:
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 20.0,
                    ),
                    title:
                    Text(
                      '+79158111806',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 20.0,
                        color: Colors.black54,
                      ),
                    )

                ),
              ),
            ),
          ),






          //TODO END ROW




            ],
          ),




    );
  }










}