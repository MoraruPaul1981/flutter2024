import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import '../../../Datalayer/entities/Entities1CMap.dart';

//TODO: интрефейсы для всех виджетов получение переменных

abstract  class IntarfaceChildWidgetErrors {
  //TODO переменные
  late BuildContext context;
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot;
  late String currentText;
  late Logger   logger;


}

abstract  class IntarfaceChildWidgetSuccessData {
  //TODO переменные
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>>  snapshot;
  late Logger   logger;
  late   List<Map<String, List<Entities1CMap>>>   receiveddatafromC1;
  late BuildContext context;


}

abstract  class IntarfaceChildWidgetDefault {
  //TODO переменные
  late BuildContext context;
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot;
  late Color alwaysStop;
  late String currentText;
  late Logger   logger;
}




abstract  class IntarfaceChildWidgetNasData {
  //TODO переменные
  late BuildContext context;
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot;
  late String currentText;
  late Logger   logger;
}


abstract  class IntarfaceChildWidgetWaiting {
  //TODO переменные
  late BuildContext context;
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?> snapshot;
  late Color alwaysStop;
  late String currentText;
  late Logger   logger;

}






abstract  class IntarfaceChildWidgetAuthorizationUsers {
  //TODO переменные
  late BuildContext context;
  late Logger   logger;

}


