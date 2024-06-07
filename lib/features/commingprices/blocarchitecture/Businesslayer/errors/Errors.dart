

import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import '../Interfaces/InterfaceError.dart';

class Errors implements InterfaceError  {
//TODO: exmple error       throw new FormatException('This is my first custom exception');
  //TODO: конструктор для бизнес логики усершного получение данных
  Errors( );


  @override
  void writerError({required Object e, required Object stacktrace  }) {
    // TODO: implement writerError
    try {
      print("writerError");
      Exception  exception  =e as Exception;
      Future.microtask(()=>print( ' print ERROR writerError e  .. $exception.toString()'
          +'\n'+'  stacktrace ....$stacktrace.toString()'));
  } catch (e) {
  print(e);
  }
  }

  @override
  void writerErrorBig(   {  required  Logger logger ,  required Object e, required Object stacktrace} ) {
    // TODO: implement writerErrorBig
    try {
      print("writerErrorBig");
      Exception  exception  =e as Exception;
      Future.microtask(()=>logger.i( ' logger  ERROR writerError e  .. $exception.toString()'
          +'\n'+'  stacktrace ....$stacktrace.toString()'));
    } catch (e) {
      print(e);
    }
  }






}