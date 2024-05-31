import 'package:commintprices/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:logger/logger.dart';

import '../../Businesslayer/animations/GetAntimations.dart';





//TODO Виджет сотоящий из трех строк Телефон и Две Почты

class ParentWidgetPhoneMail extends State<WidgetStateful>  {
  //TODO: переменные
  Logger logger;
  Key? key;
  ParentWidgetPhoneMail({this.key, required this.logger } ) ;


  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      backgroundColor:     Colors.blue,


      body:   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,



        children: [
          Container(
            height:MediaQuery.of(context).size.height,
            width: double.maxFinite,

            child: Card(
                margin: const EdgeInsets.only(left: 0,top: 0,right: 0,bottom: 0),
                elevation: 5,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    side: BorderSide(width: 5, color: Colors.blueAccent)),
                color:     Colors.blue,

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:<Widget> [

                      Container(
                        padding: new EdgeInsets.only(
                            top: 100,
                            left: 0,
                            right: 0),
                        child: CircleAvatar(
                          radius:50,
                          backgroundImage:
                          NetworkImage('https://valday.com/img/122841.jpg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Text(
                        'Союз-Автодор',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          fontFamily: 'Pacifico',
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'г.Иваново ул.Проездная 27/18',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Card(
                        elevation: 5,
                        shadowColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            side: BorderSide(width: 5, color: Colors.white10)),
                        margin: EdgeInsets.all(10.0),
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


                      Card(
                        elevation: 5,
                        shadowColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            side: BorderSide(width: 5, color: Colors.white10)),
                        margin: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: ListTile(
                            leading:
                            Icon(
                              Icons.email,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            title:
                            Text(
                              'SOUS@gmial.com',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                                color: Colors.black54,
                              ),
                            )

                        ),
                      ),


                      Card(
                        elevation: 5,
                        shadowColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            side: BorderSide(width: 5, color: Colors.white10)),
                        margin: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: ListTile(
                            leading:
                            Icon(
                              Icons.email,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            title:
                            Text(
                              'SOUS2@gmial.com',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                                color: Colors.black54,
                              ),
                            )

                        ),
                      ),

                      //TODO END ROW ALL Auntifications
                    ],
                  ),
                ),
          ),
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
          /*  //TODO: при нажатии перезапускаем Получение Данных
            BI_ChildWidgetError biwidgeterrror=new BI_ChildWidgetError(context: context,logger: logger,key: key);
            //TODO: метод зарускам когда данных нет но мы запускаем переполучить данные
            biwidgeterrror.theServeristurnedRereceive();

            logger.i(' CLick FloatingActionButtonLocation  onPressed..   ' );*/
          },
          backgroundColor: Colors.blue[300],
          tooltip: 'Повторное получение !!!',
          elevation: 15,
          splashColor: Colors.grey,
          child:  const Icon(CupertinoIcons.arrow_right,color: Colors.white, size: 29,),
          shape: RoundedRectangleBorder(
              borderRadius:  BorderRadius.all(Radius.circular(50.0))
          ),
        ),
      ),


    );



  }




}
