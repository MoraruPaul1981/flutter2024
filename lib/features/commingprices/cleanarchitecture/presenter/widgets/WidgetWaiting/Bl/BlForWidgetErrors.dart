
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';
import '../Intarface/IntarfaceBL.dart';
import '../StarStateStatefulWidgets.dart';


class BlForWidgetErrors implements IntarfaceBL {

  BuildContext buildContext;
  Logger logger;

  BlForWidgetErrors({required this.buildContext, required this.logger});

  @override
  void getRereceiptData( ) {
    try{
    // TODO: implement getRereceiptData
      logger.i('context..  '+buildContext.toString()+'' );

      StarStateStatefulWidgets( logger: logger);

    //TODO error
  }   catch (e, stacktrace) {
  print(' get ERROR $e get stacktrace $stacktrace ');
}
  }


}