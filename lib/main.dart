import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'features/commingprices/Businesslayer/Use case/errors/Errors.dart';
import 'features/commingprices/Businesslayer/Use case/loggers/GetLogger.dart';
import 'features/commingprices/Presenterlayer/childs/ChildWidgetLoginAndPassword/ChildWidgetLoginAndPassword.dart';


//TODO: Главный метод запуска Flutter проекта -----       Запускалка
void main() {
  try {
    print('Start  void  main() ');

    //TODO starting .....
    startingCommintPrices();

    print('END  void  main() ');
    //TODO error
    //TODO error
  } catch (e, stacktrace) {
    print(' get ERROR $e get stacktrace $stacktrace ');
    //TODO: Gradle Error
    Errors errors = Errors();
    errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
  }
}


//TODO метод запуска coming prices
Future<void> startingCommintPrices() async {
  try {
    //TODO int LOGGER
  Logger logger= await  GetLogger().getFuturelogger().catchError(
          (Object error) {
        print(' get ERROR $error  ');
      }) ;

    //TODO starting UI
    runApp( CommingPricesWidget(key: GlobalKey(),logger: logger));

    logger.i('    runApp( CommingPricesWidget(logger: logger)); ');

    //TODO error
  } catch (e, stacktrace) {
    print(' get ERROR $e get stacktrace $stacktrace ');
    //TODO: Gradle Error
    Errors errors = Errors();
    errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
  }
}



///TODO UI
class CommingPricesWidget extends StatelessWidget {
//TODO log
  Logger logger;
  Key key;
//TODO cunstructor
  CommingPricesWidget({ required this.key,required this.logger}) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: CommingPricesStateful(key:key, logger:logger),
    );
  }

}

class CommingPricesStateful extends StatefulWidget {
  Logger logger;
  Key key;
/*  //TODO: StatefulWidget
*      */
  CommingPricesStateful({ required this.key   ,required this.logger}) ;

  @override
  //TODO Comming Prices main code
  //State<WidgetStateful> createState() => ParentWidgetStateful(key:key, logger: logger);
  //TODO тест код  антификация пользователя
  //State<WidgetStateful> createState() => ParentWidgetPhoneMail(key:key, logger: logger);

  State<CommingPricesStateful> createState() => ChildWidgetLoginAndPassword(key: key, logger: logger);

//TODO тест код  ROW
// State<WidgetStateful> createState() => ParentWidgetRow(key:key, logger: logger);


//TODO ENDING widget
}







