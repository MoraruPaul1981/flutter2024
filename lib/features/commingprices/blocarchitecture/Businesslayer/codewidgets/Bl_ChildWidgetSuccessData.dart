
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';
import '../Interfaces/IntarfaceBLWidgets.dart';


class BI_ChildWidgetProccingError implements IntarfaceBLWidgets {

  BuildContext buildContext;
  Logger logger;

  BI_ChildWidgetProccingError({required this.buildContext, required this.logger});

  @override
  void getRereceiptData( ) {
    try{
    // TODO: implement getRereceiptData
      logger.i('context..  '+buildContext.toString()+'' );

      //ParentWidgetStateful( logger: logger);

    //TODO error
  }   catch (e, stacktrace) {
  print(' get ERROR $e get stacktrace $stacktrace ');
}
  }


}