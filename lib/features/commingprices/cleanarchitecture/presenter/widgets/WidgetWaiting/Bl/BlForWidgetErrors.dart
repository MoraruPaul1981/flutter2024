
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';
import '../Intarface/IntarfaceBL.dart';


class BlForWidgetErrors implements IntarfaceBL {

  BuildContext buildContext;
  Logger logger;

  BlForWidgetErrors(this.buildContext,this.logger);

  @override
  void getRereceiptData( ) {
    try{
    // TODO: implement getRereceiptData
      logger.i('context..  '+buildContext.toString()+'' );
    //TODO error
  }   catch (e, stacktrace) {
  print(' get ERROR $e get stacktrace $stacktrace ');
}
  }


}