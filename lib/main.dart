import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'features/commingprices/blocarchitecture/Businesslayer/Blocs/blocCounter/BlocCreatecounter.dart';
import 'features/commingprices/blocarchitecture/Businesslayer/errors/Errors.dart';
import 'features/commingprices/blocarchitecture/Businesslayer/loggers/GetLogger.dart';
import 'features/commingprices/blocarchitecture/Presenterlayer/childs/ChildWidgetLoginAndPassword/ChildWidgetLoginAndPassword.dart';


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
void startingCommintPrices() {
  try {
    //TODO int LOGGER
    GetLogger().getFuturelogger()
        .then((logger) {
      //TODO then
      logger as Logger;
      logger.i('start startingCommintPrices()  .. ');
      //TODO starting UI
      runApp( CommingPricesStatelessWidget(logger: logger));

      logger.i('end startingCommintPrices()  ..  ');
      return logger;
    });
    //TODO error
  } catch (e, stacktrace) {
    print(' get ERROR $e get stacktrace $stacktrace ');
    //TODO: Gradle Error
    Errors errors = Errors();
    errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
  }
}

///TODO UI
class CommingPricesStatelessWidget extends StatelessWidget {
//TODO log
  Logger logger;

//TODO cunstructor
  CommingPricesStatelessWidget({ required this.logger, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => BlocCreatecounter(),
        child: WidgetStateful(logger, key),
      ),
    );
  }

}

class WidgetStateful extends StatefulWidget {
  Logger logger;
  Key? key;

  WidgetStateful(this.logger, this.key);

  @override
  //TODO Comming Prices main code
  //State<WidgetStateful> createState() => ParentWidgetStateful(key:key, logger: logger);
  //TODO тест код  антификация пользователя
  //State<WidgetStateful> createState() => ParentWidgetPhoneMail(key:key, logger: logger);

  State<WidgetStateful> createState() =>
      ChildWidgetLoginAndPassword(key: key, logger: logger);

//TODO тест код  ROW
// State<WidgetStateful> createState() => ParentWidgetRow(key:key, logger: logger);


//TODO ENDING widget
}






