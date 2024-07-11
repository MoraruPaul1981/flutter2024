import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
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
    runApp( CommingPricesWidget(key: UniqueKey(),logger: logger));

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
/*  //TODO: StatefulWidget//
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




class blee {


/*  void _wait() async {
    await FlutterBluePlus.adapterState
        .where((state) => state == BluetoothAdapterState.on)
        .first;
    void _startScanning() {
      FlutterBluePlus.startScan(timeout: const Duration(seconds: 2));
    }

    void _listenScanResult() {
      FlutterBluePlus.setLogLevel(LogLevel.verbose, color: false);
      FlutterBluePlus.scanResults.listen((scanList) async {
        for (ScanResult result in scanList) {
          if (result.device.remoteId.toString() == weightRemoteID) {
            result.device.connect(autoConnect: true);
            List<BluetoothService> services =
            await result.device.discoverServices();
            services.forEach((service) async {
              var characteristics = service.characteristics;
              for (BluetoothCharacteristic c in characteristics) {
                await c.setNotifyValue(true);
                weightReceivedValue = await c.read();
                setState(() {
                });
              }
            });
          }
        }

  }*/
}

