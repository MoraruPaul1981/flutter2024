


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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            //TODO: название союз-автодор 1
            Container(
                height: 80,
                width: 300,
                alignment: Alignment.center,
                margin: new EdgeInsets.only(left: 5,top:350,right: 5,bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),),
                        child:  Padding(
                          padding: EdgeInsets.all(2.0),
                          child:
                          AnimatedTextKit(
                            animatedTexts: [
                              ColorizeAnimatedText(currentText, textStyle: TextStyle(color: Colors.grey,
                                fontSize: 40,
                                fontWeight: FontWeight.w200,),textAlign:  TextAlign.center,
                                  colors:[Colors.black,Colors.white,Colors.grey,Colors.black] ),],
                            pause: Duration(microseconds: 1),
                            isRepeatingAnimation: true,
                            repeatForever: false,
                          ),
                        )
                    )
                  ],
                )),





            //TODO: Програссбар  1
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all( 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.only(left: 5,top:150,right: 5,bottom: 5),
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        color: Colors.grey[200], //assign either here or to the container
                        borderRadius: BorderRadius.circular(24),),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child:  Theme(
                          data: Theme.of(context).copyWith(hintColor: Colors.white),
                          child: CircularProgressIndicator(
                              strokeWidth: 4.0,
                              backgroundColor: Colors.grey,
                              valueColor: AlwaysStoppedAnimation<Color>(alwaysStop)),
                        ),
                      ),
                    ),
                  ],
                )),






 //TODO: год снизу

            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all( 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.only(left: 5,top: 5,right: 5,bottom: 5),
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child:  Theme(
                          data: Theme.of(context).copyWith(hintColor: Colors.white),
                          child:   Text(
                            '2024 г.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0,
                              fontFamily: 'Pacifico',
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),

            //TODO END ROW
        
          ],
        ),
      ),
    );
  }






}