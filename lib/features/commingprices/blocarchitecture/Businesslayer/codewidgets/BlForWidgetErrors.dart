
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';

import '../../Presenterlayer/ParentWidgetStateful.dart';
import '../Interfaces/IntarfaceBLWidgets.dart';



class BlForWidgetErrors implements IntarfaceBLWidgets {

  BuildContext buildContext;
  Logger logger;

  BlForWidgetErrors({required this.buildContext, required this.logger});

  @override
  void getRereceiptData( ) {
    try{
    // TODO: implement getRereceiptData
      logger.i('context..  '+buildContext.toString()+'' );

      ParentWidgetStateful( logger: logger);

    //TODO error
  }   catch (e, stacktrace) {
  print(' get ERROR $e get stacktrace $stacktrace ');
}
  }


}