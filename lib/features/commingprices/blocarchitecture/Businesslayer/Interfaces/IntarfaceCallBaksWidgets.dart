import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import '../../Datalayer/entities/Entities1CMap.dart';



abstract  class IntarfaceCallBaksWidgets {

  //TODO:1
  Widget widgetProccerWaiting({required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>?>  snapshot,required  Logger logger});


  //TODO:2
  Widget widgetProccingDefault( {required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>>  snapshot,required  Logger logger});


  //TODO:3
  Widget widgetProccingError( {required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>>  snapshot,required  Logger logger});


  //TODO:4
  Widget widgetProccingDontData( {required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>>  snapshot,required  Logger logger});


  //TODO:5
  Widget widgetProccingNasData( {required BuildContext context,
    required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot,required  Logger logger});




}


