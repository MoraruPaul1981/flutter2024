

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:commintprices/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
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

/*    Uint8List bytes =    getDownloadImages ()   ;
    logger.i('getDownloadImages ()..  '+bytes.toString()+'' );*/


    return   Scaffold(
      backgroundColor:     Colors.white,
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
                shadowColor: Colors.white12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    side: BorderSide(width: 3, color: Colors.white)),
                color:     Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:<Widget> [







                      //TODO: логин
                          Card(
                            elevation: 10,
                            shadowColor: Colors.white12,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                side: BorderSide(width: 1, color: Colors.white12 )),
                            margin:   const EdgeInsets.only(left: 0,top: 100,right: 0,bottom: 0),
                            color: Colors.white12,
                                child: const CircleAvatar(
                                    radius: 48,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('images/imageandroid/imageforpassword.jpg'),
                                    child: Stack(
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: CircleAvatar(
                                                  radius: 18,
                                                  backgroundColor: Colors.white,
                                                  child: Icon(Icons.lock,color: Colors.black) // change this children
                                              )
                                          )
                                        ]
                                    )
                                ),
                          ),


              //TODO: Названние Союз-автодор
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin:     const EdgeInsets.only(left: 0,top: 10,right: 0,bottom: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),),
                      child:  Padding(
                        padding: EdgeInsets.all(2.0),
                        child:
                        Text(
                          'ООО «Союз Автодор»',
                          style: TextStyle(color: Colors.grey[800],
                          fontSize: 25,
                          fontWeight: FontWeight.w300,),textAlign:  TextAlign.center,
                        ),
                      )
                  )
                ],
              ),







             //TODO: логин
                      //TODO: логин    //TODO: логин
                      Card(
                        elevation: 5,
                        shadowColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            side: BorderSide(width: 5, color: Colors.white10)),
                        margin:       const EdgeInsets.only(left: 10,top: 30,right: 10,bottom: 10),
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










                      //TODO: пароль           //TODO: пароль           //TODO: пароль
                      Card(
                        elevation: 5,
                        shadowColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            side: BorderSide(width: 5, color: Colors.white10)),
                        margin:       const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
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







                      //TODO: линия
                      Card(
                        elevation: 3,
                        shadowColor: Colors.grey[200],
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(100.0)),
                            side: BorderSide(width: 5, color: Colors.white)),
                        margin:       const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                        child: Container(
                          color:Colors.white ,
                          height:1,
                          width: double.maxFinite,
                        ),
                      ),






                      //TODO END ROW ALL Auntifications
                    ],
                  ),
                ),
          ),
        ],
      ),


      //TODO: КНОПКА
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
