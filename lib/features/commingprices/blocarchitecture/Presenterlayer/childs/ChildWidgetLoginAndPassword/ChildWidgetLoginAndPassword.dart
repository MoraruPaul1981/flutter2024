
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/src/logger.dart';

import '../../../../../../main.dart';
import '../../../Businesslayer/Blocs/bloccubit/bloccubit.dart';
import '../../../Businesslayer/Blocs/bloccubitfuture/bloccubitfuture.dart';
import '../../../Businesslayer/Interfaces/childinterface/IntarfaceVariablesWidgets.dart';
import '../../../Businesslayer/animations/GetAntimations.dart';
import 'componentsLoginAndPass.dart';


/////////TODO класс ожидание ответа пинга от 1с
class ChildWidgetLoginAndPassword extends State<WidgetStateful>
    implements IntarfaceChildWidgetAuthorizationUsers {

//TODO: переменные
  @override
  Logger logger;
  @override
  Key? key;

  //TODO консруктор
  ChildWidgetLoginAndPassword({this.key, required this.logger });

  @override
  Widget build(BuildContext context) {
    //TODO: login and password
    return  BlocProvider(
     // create: (context) => CountterCubit(myMap),
      create: (context) => CountterCubitFuture( ),
      child:Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [Container(
                  width: double.maxFinite,
                  child: Card(
                    margin: const EdgeInsets.only(
                        left: 0, top: 0, right: 0, bottom: 0),
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
                        widgetcircleAvatar(logger),
        
                        const SizedBox(height: 2),
        
        
                        //TODO: Названние Союз-автодор
                        widgetnameText(logger),
        
                        const SizedBox(height: 2),
        
                        //TODO: линия
                        widgetLine(logger),
        
        
                        const SizedBox(height: 2),
        
                        //TODO: логин     //TODO: логин     //TODO: логин
                        widgetLogin(logger),
        
                        const SizedBox(height: 2),
        
                        //TODO: пароль           //TODO: пароль           //TODO: пароль
                        widgetPasswrord(logger),
        
        
                        //TODO END ROW ALL Auntifications
                      ],
                    ),
                  ),
                ),
              ],
            ),
        
        
            //TODO: Fload КНОПКА
        ////TODO: Кнопка переполучение Данных Когда сервер выключин
            floatingActionButtonLocation: FloatingActionButtonLocation
                .miniCenterFloat,
            floatingActionButtonAnimator: NoScalingAnimation(),
            floatingActionButton: widgetFloatingActionButton(logger),



            /////TODO: END конец всех компоннтов
        ),
    );

      }

  }


