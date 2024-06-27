
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/src/logger.dart';

import '../../../../../../main.dart';
import '../../../Businesslayer/Cubits/bloccubitInt/cubitLoginPassword.dart';
import '../../../Businesslayer/Interfaces/childinterface/IntarfaceVariablesWidgets.dart';
import '../../../Businesslayer/animations/GetAntimations.dart';
import 'BunessLogicWidgetsLoginPassword.dart';



/////////TODO класс ожидание ответа пинга от 1с
class ChildWidgetLoginAndPassword extends State<WidgetStateful> implements IntarfaceChildWidgetAuthorizationUsers {

//TODO: переменные
  @override
  Logger logger;
  @override
  Key? key;

  //TODO консруктор
  ChildWidgetLoginAndPassword({this.key, required this.logger });

  @override
  Widget build(BuildContext context) {
   /* //TODO: ССылка
          Бизнес логика  login and password*/
    BunessLogicWidgetsLoginPassword bunessLogicWidgetsLoginPassword=
    new BunessLogicWidgetsLoginPassword( logger:logger, context:context, key:key);

    return  BlocProvider(
      create: (context) => CubitLoginPassword(logger ),
 /*  TODO:Главный Scaffold Экрана ЛОгин и Пароль внутри его все компоненты
 *    */
      child:Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [Container(
                  width: double.maxFinite,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.white12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        side: BorderSide(width: 3, color: Colors.white)),
                    color: Colors.white,
                    child: SizedBox(
                      height: 700,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[


                          //TODO:Все Компонеты логирование Виджежета
                          const SizedBox(height: 2),

                          //TODO: Значек
                          bunessLogicWidgetsLoginPassword.   widgetcircleAvatar(),

                          const SizedBox(height: 2),


                          //TODO: Названние Союз-автодор
                          bunessLogicWidgetsLoginPassword.   widgetnameText(),



                          const SizedBox(height: 2),

                          //TODO: линия
                          bunessLogicWidgetsLoginPassword.  widgetLine(),



                          const SizedBox(height: 2),

                          //TODO: логин     //TODO: логин     //TODO: логин
                          bunessLogicWidgetsLoginPassword.  widgetLogin(),

                          const SizedBox(height: 2),

                          //TODO: пароль           //TODO: пароль           //TODO: пароль
                          bunessLogicWidgetsLoginPassword.  widgetPasswrord(),


                       /*
                        TODO: програссбар
                         */
                          bunessLogicWidgetsLoginPassword.  widgetcircularProgress(),



                          //TODO END ROW ALL Auntifications
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        
        
            //TODO: Fload КНОПКА  Самый нижний компонент
        ////TODO: Кнопка переполучение Данных Когда сервер выключин
            floatingActionButtonLocation: FloatingActionButtonLocation
                .miniCenterFloat,
            floatingActionButtonAnimator: NoScalingAnimation(),
            floatingActionButton:bunessLogicWidgetsLoginPassword. widgetFloatingActionButton( ),




        ////TODO:END MAin Widgets Scaffold
      ),
    );




      }

  }


