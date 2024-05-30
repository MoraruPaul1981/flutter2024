

import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import '../Interfaces/InterfaceError.dart';

class Errors implements InterfaceError  {

  //TODO: конструктор для бизнес логики усершного получение данных
  Errors( );

  @override
  void writerError({required String message, required Object ext, required BuildContext context, required Logger logger}) {
    // TODO: implement writerError
    try {
      Future.microtask(()=>logger.i( 'ERROR writerError .. $message  ext ....$ext '));
    } catch (e) {
      print(e);
    }
  }

  @override
  void writerErrorSimple({required String message, required Object ext}) {
    // TODO: implement writerErrorSimple
    try {
      Future.microtask(()=>print( 'ERROR writerError .. $message  ext ....$ext '));
    } catch (e) {
      print(e);
    }
  }







}