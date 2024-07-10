


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:logger/src/logger.dart';


import '../../Businesslayer/Use case/Interfaces/childinterface/IntarfaceVariablesWidgets.dart';
import '../../Businesslayer/Use case/animations/GetAntimations.dart';
import '../../Businesslayer/Widgets_BI/BI_ChildWidgetError.dart';


import '../../Datalayer/entities/Entities1CMap.dart';






/////////TODO класс ожидание ответа пинга от 1с
class ChildGetWidgetErrors  extends StatelessWidget    implements   IntarfaceChildWidgetErrors {

  @override
  BuildContext context;

  @override
  String currentText;

  @override
  AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot;

  @override
  Logger logger;

  @override
  Key  key;

  //TODO: конструктор
  ChildGetWidgetErrors({required this.context,
      required this.currentText,
      required this.snapshot,
      required this.logger,
      required this.key})  ;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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






////TODO: Кнопка переполучение Данных Когда сервер выключин
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButtonAnimator:  NoScalingAnimation(),
      floatingActionButton: Container(
        margin:  const EdgeInsets.only( left: 5,top:5,right: 5,bottom: 50),
        padding: const EdgeInsets.all(2.0),
        child: FloatingActionButton (
          autofocus: true,
          focusElevation: 5,
          highlightElevation: 50,
          onPressed: () {
            //TODO: при нажатии перезапускаем Получение Данных
            BI_ChildWidgetError biwidgeterrror=new BI_ChildWidgetError(context: context,logger: logger,key: key);
            //TODO: метод зарускам когда данных нет но мы запускаем переполучить данные
            biwidgeterrror.theServeristurnedRereceive();

            logger.i(' CLick FloatingActionButtonLocation  onPressed..   ' );
          },
          backgroundColor: Colors.red[300],
          tooltip: 'Повторное получение !!!',
          elevation: 15,
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


