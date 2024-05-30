

import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import '../Interfaces/InterfaceError.dart';

class Errors implements InterfaceError  {
  @override
  late BuildContext context;

  @override
  late Logger logger;

 
  //TODO: конструктор для бизнес логики усершного получение данных
  Errors({ required this.logger,required this.context});


  @override
  void writerError({required String message, required Object ext}) {
    // TODO: implement writerError
    try {
      Future.microtask(()=>logger.i( 'ERROR writerError .. $message  ext ....$ext '));
    } catch (e) {
      print(e);
    }
  }






}