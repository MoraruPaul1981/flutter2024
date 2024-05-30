
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'features/commingprices/blocarchitecture/Businesslayer/loggers/GetLogger.dart';
import 'features/commingprices/blocarchitecture/Presenterlayer/parents/ParentWidgetStateful.dart';



//TODO: Главный метод запуска Flutter проекта -----       Запускалка
  void  main()    {
  try {
    print('Start  void  main() ');

    //TODO starting .....
  startingCommintPrices();

    print('END  void  main() ');
    //TODO error
  }   catch (e, stacktrace) {
    print(' get ERROR $e get stacktrace $stacktrace ');
  }
}







//TODO метод запуска coming prices
    void startingCommintPrices()  {
    try {

       //TODO int LOGGER
       GetLogger().getFuturelogger()
           .then((logger) {
         //TODO then
         logger as Logger;
         logger.i('start startingCommintPrices()  .. ');


         //TODO starting UI
         runApp(  CommingPricesStatelessWidget(  logger: logger));

         logger.i('start value ..  ');
         return logger;

       });
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }


  }

///TODO UI
class CommingPricesStatelessWidget extends StatelessWidget {
//TODO log
  Logger logger;
//TODO cunstructor
     CommingPricesStatelessWidget( { required this.logger,super.key});



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      debugShowCheckedModeBanner: false,
      home:   WidgetStateful(logger, key),
    );
  }

}

class WidgetStateful extends StatefulWidget {
  Logger logger;
  Key? key;
    WidgetStateful(this. logger,this.key);
  @override
/*  //TODO widget ROW
  State<StatefulWidgetCommingPrices> createState() => WidgetRow();*////TODO
/*//TODO widget Mail Phone
  State<StatefulWidgetCommingPrices> createState() => WidgetPhoneMail();*/////

  //TODO Comming Prices
  State<WidgetStateful> createState() => ParentWidgetStateful(key:key, logger: logger);
  //TODO ENDING widget
}






