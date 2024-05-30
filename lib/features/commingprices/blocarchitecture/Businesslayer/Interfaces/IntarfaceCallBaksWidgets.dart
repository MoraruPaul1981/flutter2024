import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import '../../Datalayer/entities/Entities1CMap.dart';



abstract  class IntarfaceChildWidgetWaiting {

  late BuildContext context;
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot;
  late Color alwaysStop;
  late String currentText;


}


abstract  class IntarfaceChildGetWidgetWaitingErrors {

  late BuildContext context;
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot;
  late Color alwaysStop;
  late String currentText;


}
