import 'package:commintprices/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';





//TODO Виджет сотоящий из трех строк Телефон и Две Почты

class ParentWidgetPhoneMail extends State<WidgetStateful>  {
  //TODO: переменные
  Logger logger;
  Key? key;
  ParentWidgetPhoneMail({this.key, required this.logger } ) ;


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:     Colors.blueAccent,

        body:Card(
          elevation: 5,
          shadowColor: Colors.red,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              side: BorderSide(width: 5, color: Colors.blueAccent)),
          color:     Colors.blueAccent,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                CircleAvatar(
                  radius:50,
                  backgroundImage:
                  NetworkImage('https://valday.com/img/122841.jpg'),
                  backgroundColor: Colors.transparent,
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
                  shadowColor: Colors.red,
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
                  shadowColor: Colors.red,
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
                  shadowColor: Colors.red,
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


              ],
            ),
          ),
    );
  }
}
