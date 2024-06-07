
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/src/logger.dart';

import '../../../../../../main.dart';
import '../../../Businesslayer/Blocs/bloccubit/bloccubit.dart';
import '../../../Businesslayer/Blocs/bloccubitInt/bloccubitInt.dart';
import '../../../Businesslayer/Blocs/bloccubitfuture/bloccubitfuture.dart';
import '../../../Businesslayer/Interfaces/childinterface/IntarfaceVariablesWidgets.dart';
import '../../../Businesslayer/animations/GetAntimations.dart';
import '../../../Businesslayer/codewidgets/BI_ChildWidgetLoginAndPassword.dart';
import 'AllcomponentsLoginAndPass.dart';



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
    //TODO: login and password
    AllcomponentsLoginAndPass getcomponentsLoginAndPass=new AllcomponentsLoginAndPass( logger:logger, context:context, key:key);

    return  BlocProvider(
      create: (context) => CountterCubitInt(logger ),
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
                        getcomponentsLoginAndPass.   widgetcircleAvatar(),
        
                        const SizedBox(height: 2),
        
        
                        //TODO: Названние Союз-автодор
                        getcomponentsLoginAndPass.   widgetnameText(),
        
                        const SizedBox(height: 2),
        
                        //TODO: линия
                        getcomponentsLoginAndPass.  widgetLine(),
        
        
                        const SizedBox(height: 2),
        
                        //TODO: логин     //TODO: логин     //TODO: логин
                        getcomponentsLoginAndPass.  widgetLogin(),
        
                        const SizedBox(height: 2),
        
                        //TODO: пароль           //TODO: пароль           //TODO: пароль
                        getcomponentsLoginAndPass.  widgetPasswrord(),
        
        
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
            floatingActionButton:getcomponentsLoginAndPass. widgetFloatingActionButton( ),


/*            BlocConsumer<CountterCubitInt,int>(
      listener: (context, state) {
        // do stuff here based on BlocA's state
          BI_ChildWidgetLoginAndPassword bi_childWidgetLoginAndPassword=new BI_ChildWidgetLoginAndPassword(context: context,logger: logger,key: key);
        // TODO: implement listener Реакция на  смену статус точнне получение ПубличногоID
        bi_childWidgetLoginAndPassword.callbAckreactiontosomeonewhocameStatus(state: state);

        logger.i('state...$state');
      },
      builder: (context, state) {
    // return widget here based on BlocA's state
    return Container(
    margin: const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 50),
    padding: const EdgeInsets.all(2.0),
    child: FloatingActionButton(
    autofocus: true,
    focusElevation: 5,
    highlightElevation: 50,
    onPressed: () {
    //TODO: Нажатие на Круглую кнопку Float
    logger.i('  CLick FloatingActionButtonLocation  onPressed  Logon и Пароль ');
    //TODO: Bloc change add in Cubit Запускаем Получение Пабличного ID на базе ЛОгина и Пароля
    Map<String, dynamic> parametrgetPublicId={};
    context.read<CountterCubitInt>().getbasedonloginandpasswordPublicID(parametrgetPublicId:parametrgetPublicId);
    },
    backgroundColor: Colors.blue[300],
    tooltip: 'Вход !!!',
    elevation: 15,
    splashColor: Colors.grey,
    child: const Icon(
    CupertinoIcons.arrow_right, color: Colors.white, size: 29,),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50.0))
    ),
    ),
    );
    ////TODO: END  Container

    }
    )*/



        ////TODO:END MAin Widgets Scaffold
      ),
    );




      }

  }


