

import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import '../Interfaces/InterfaceError.dart';

class Errors implements InterfaceError  {

  //TODO: конструктор для бизнес логики усершного получение данных
  Errors( );


  @override
  void writerError({required Exception e, required StackTrace stacktrace }) {
    // TODO: implement writerError
    try {
      Future.microtask(()=>print( ' print ERROR writerError e  .. $e  stacktrace ....$stacktrace '));
  } catch (e) {
  print(e);
  }
  }

  @override
  void writerErrorBig(     BuildContext context,   Logger logger,{required Exception e, required StackTrace stacktrace}) {
    // TODO: implement writerErrorBig
    try {
      Future.microtask(()=>logger.i( '  logger ERROR writerError e  .. $e  stacktrace ....$stacktrace '));
    } catch (e) {
      print(e);
    }
  }






}