


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/src/logger.dart';

import '../../../../../../main.dart';

import '../../../Businesslayer/Cubits/cubitWidgetLoginAndPassword/CubitLoginPassword.dart';
import '../../../Businesslayer/Cubits/cubitWidgetLoginAndPassword/states/StatesWidgetsLoginPassword.dart';
import '../../../Businesslayer/Use case/Interfaces/childinterface/IntarfaceVariablesWidgets.dart';
import '../../../Businesslayer/Use case/animations/GetAntimations.dart';







/////////TODO класс ожидание ответа пинга от 1с
class ChildWidgetLoginAndPassword extends State<CommingPricesStateful> implements IntarfaceChildWidgetAuthorizationUsers {

//TODO: переменные
  @override
  Logger logger;
  @override
  Key? key;

  //TODO консруктор
  ChildWidgetLoginAndPassword({this.key, required this.logger });
  //TODO:
  @override
  Widget build(BuildContext context) {
   /* //TODO: ССылка
          Бизнес логика  login and password*/
    StatesWidgetsLoginPassword bunessLogicWidgetsLoginPassword=
    new StatesWidgetsLoginPassword( logger:logger, context:context, key:key);

    return  BlocProvider(
      create: (context) => CubitLoginPassword(0),
 /*  TODO:Главный Scaffold Экрана ЛОгин и Пароль внутри его все компоненты
 *    */
      child:Scaffold(
            backgroundColor: Colors.white,
            body:  Container(
              margin: const EdgeInsets.all(2.0),
              padding: const EdgeInsets.all(2.0),
              child: Card(
                      elevation: 5,
                      shadowColor: Colors.white12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          side: BorderSide(width: 3, color: Colors.white)),
                      color: Colors.white,
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
                            const SizedBox(height: 2),
                            bunessLogicWidgetsLoginPassword.  widgetcircularProgress(),



                            //TODO END ROW ALL Auntifications
                          ],
                        ),

              ),
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


