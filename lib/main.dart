import 'package:commintprices/features/commingprices/cleanarchitecture/presenter/widgets/WidgetWaiting/ParentWidgetStateful.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';


import 'features/commingprices/cleanarchitecture/domain/businesslogic/Loggers/GetErrors.dart';



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
       GetErros().getFuturelogger()
           .then((logger) {
         //TODO then
         logger as Logger;
         logger.i('start startingCommintPrices()  .. ');


         //TODO starting UI
         runApp(  startingwidgetCommingPrices(  logger: logger));

         logger.i('start value ..  ');
         return logger;

       });
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }


  }




































































































///TODO UI
class startingwidgetCommingPrices extends StatelessWidget {
//TODO log
  Logger logger;
//TODO cunstructor
     startingwidgetCommingPrices( { required this.logger,super.key});



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      debugShowCheckedModeBanner: false,
      home:   WidgetStateful(logger),
    );
  }

}

class WidgetStateful extends StatefulWidget {
  Logger logger;
    WidgetStateful(this. logger,{super.key});
  @override

/*  //TODO widget ROW
  State<StatefulWidgetCommingPrices> createState() => WidgetRow();*////TODO

/*//TODO widget Mail Phone
  State<StatefulWidgetCommingPrices> createState() => WidgetPhoneMail();*/////

  //TODO Comming Prices
  State<WidgetStateful> createState() => ParentWidgetStateful( logger: logger);//TODO//
  //TODO

  //TODO ENDING widget
}






