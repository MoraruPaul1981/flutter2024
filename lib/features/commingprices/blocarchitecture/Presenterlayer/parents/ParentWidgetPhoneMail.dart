

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


                      ///TODO: начинаем компоненты

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: new EdgeInsets.only(
                                top: 100,
                                left: 0,
                                right: 0),
                            child: CircleAvatar(
                              radius:40,
                              backgroundColor: Colors.red,
                              foregroundImage: AssetImage(
                                'images/imageandroid/imageforpassword.jpg',
                              ),
                            ),
                          ),
                        ],
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
                        AnimatedTextKit(
                          animatedTexts: [
                            ColorizeAnimatedText('ООО «Союз Автодор»', textStyle: TextStyle(color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w300,),textAlign:  TextAlign.center,
                                colors:[Colors.black,Colors.white,Colors.grey,Colors.black] ),],
                          pause: Duration(microseconds: 1),
                          isRepeatingAnimation: true,
                          repeatForever: false,
                        ),
                      )
                  )
                ],
              ),












 //TODO: логин
                      //TODO: логин    //TODO: логин

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










                      //TODO: пароль           //TODO: пароль           //TODO: пароль
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







                      //TODO: линия
                      Card(
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            side: BorderSide(width: 5, color: Colors.blue)),
                        margin: const EdgeInsets.only(left: 20,top: 10,right:20,bottom: 5),
                        child: Container(
                          color:Colors.blue ,
                          height:2,
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


  //TODO код загрузки фото
  Future<Uint8List>  getDownloadImages1 ()   async {
    ByteData imageData = await  rootBundle.load('assets/imageforpassword.jpg') as ByteData;
    Uint8List bytes = imageData.buffer.asUint8List()    ;
    logger.i('getDownloadImages ()..  '+imageData.toString()+'' );
    return  bytes;
  }

  Future<Uint8List>  getDownloadImages2 ()   async {
    ByteData imageData = await  rootBundle.load('assets/imageforpassword.jpg') as ByteData;
    Uint8List bytes = imageData.buffer.asUint8List()    ;
    logger.i('getDownloadImages ()..  '+imageData.toString()+'' );
    return  bytes;
  }


}
