


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:commintprices/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/src/logger.dart';

import '../../../data/entities/Entities1CMap.dart';
import 'Bl/BlForWidgetErrors.dart';
import 'Intarface/IntarfaceWaiting.dart';




/////////TODO класс ожидание ответа пинга от 1с
class GetWidgetWaitingErrors  implements   IntarfaceWaiting {

  Logger logger;

  GetWidgetWaitingErrors(this.logger);
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
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
      //TODO END ROW1
          //TODO END ALL  ROWs
            ],
          ),


      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Container(
        margin:  const EdgeInsets.only( left: 5,top:5,right: 5,bottom: 50),
        padding: const EdgeInsets.all(2.0),
        child: FloatingActionButton (
          onPressed: () {
            //TODO: при нажатии перезапускаем Получение Данных
            BlForWidgetErrors blwid=new BlForWidgetErrors(buildContext:context, logger:logger);
            blwid.getRereceiptData();
            logger.i(' CLick FloatingActionButtonLocation  onPressed..   ' );
          },
          backgroundColor: Colors.red,
          tooltip: 'Повторное получение !!!',
          elevation: 5,
          splashColor: Colors.grey,
          child:  const Icon(Icons.sync,color: Colors.white, size: 29,),
          shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.all(Radius.circular(50.0))
          ),
        ),
      ),





    );



  }


}