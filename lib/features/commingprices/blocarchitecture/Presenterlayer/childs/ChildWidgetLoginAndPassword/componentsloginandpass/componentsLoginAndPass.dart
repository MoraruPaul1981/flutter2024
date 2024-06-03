import 'dart:isolate';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../Businesslayer/animations/GetAntimations.dart';
import '../../../../Businesslayer/errors/Errors.dart';




class widgetcircleAvatar  extends StatelessWidget  {
  Logger logger;
  widgetcircleAvatar(this.logger,{super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return                     Card(
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
                        backgroundColor: Colors.white60,
                        child: Icon(Icons.lock,color: Colors.black) // change this children
                    )
                )
              ]
          )
      ),
    );

  }
}


class widgetnameText extends StatelessWidget  {
  Logger logger;
  widgetnameText(this.logger,{super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return                     Row(
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
    );

  }
}













































  class widgetLogin  extends StatelessWidget  {
    Logger logger;
    widgetLogin(this.logger,{super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return        Card(
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
            Icons.account_circle,
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
    );

  }
}





class widgetPasswrord  extends StatelessWidget  {
  Logger logger;
  widgetPasswrord(this.logger,{super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return         Card(
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
            Icons.password,
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
    );

  }
}


class widgetLine  extends StatelessWidget  {
  Logger logger;
  widgetLine(this.logger,{super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return     Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(child:
        Container(
          margin:     const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 0),
          child: Divider(
            thickness: 1,
            color: Colors.grey[200],
          ),
        )
        )
      ],
    );

  }
}


//TODO : круглая пнопка снизу ОК

class widgetFloatingActionButton  extends StatelessWidget  {
  Logger logger;
 late BuildContext context;
  var  sum;
//TODO: Конструктор кнопки Fload  Крглой
widgetFloatingActionButton(this.logger,{super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   this.context= context;
    return      Container(
        margin:  const EdgeInsets.only( left: 5,top:5,right: 5,bottom: 50),
    padding: const EdgeInsets.all(2.0),
    child: FloatingActionButton (
    autofocus: true,
    focusElevation: 5,
    highlightElevation: 50,
    onPressed: () async {
 //TODO: при нажатии перезапускаем Получение Данных
        /*    BI_ChildWidgetError biwidgeterrror=new BI_ChildWidgetError(context: context,logger: logger,key: key);
            //TODO: метод зарускам когда данных нет но мы запускаем переполучить данные
            biwidgeterrror.theServeristurnedRereceive();

            logger.i(' CLick FloatingActionButtonLocation  onPressed..   ' );*/

      logger.i('widgetFloatingActionButton  CLick FloatingActionButtonLocation  onPressed..   ' );

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
      );

  }
}




