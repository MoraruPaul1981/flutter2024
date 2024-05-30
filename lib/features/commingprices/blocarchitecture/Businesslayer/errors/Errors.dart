

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
      Future.microtask(()=>print( 'ERROR writerError e  .. $e  stacktrace ....$stacktrace '));
  } catch (e) {
  print(e);
  }
  }




}