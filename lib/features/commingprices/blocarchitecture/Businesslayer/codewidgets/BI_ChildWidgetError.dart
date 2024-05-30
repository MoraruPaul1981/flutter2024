
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';

import '../Injections/InjectionDependency.dart';



class BI_ChildWidgetError  {

  BuildContext buildContext;
  Logger logger;

  BI_ChildWidgetError({required this.buildContext, required this.logger});


  //TODO: metod1
  void getRereceiptData( ) {
    try{
      //ParentWidgetStateful( logger: logger);
      print('getRereceiptData');

    //TODO error
  }   catch (e, stacktrace) {
  print(' get ERROR $e get stacktrace $stacktrace ');
}
  }








}