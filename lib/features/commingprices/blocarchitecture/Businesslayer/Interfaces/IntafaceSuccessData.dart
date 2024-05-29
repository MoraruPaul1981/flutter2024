
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import '../../Datalayer/entities/Entities1CMap.dart';



abstract  class IntafaceTransformationSuccessData {
  //TODO переменные
    late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>>  snapshot;
     late Logger   logger;
    late   List<Map<String, List<Entities1CMap>>>   receiveddatafromC1;
    late BuildContext context;
//TODO
  List<Map<String, List<Entities1CMap>>> firstTransformationionofincomingData({required  AsyncSnapshot<List<Map<String,
      List<Entities1CMap>>>> snapshot, required Logger logger});

  //TODO  //TODO  ВТОРАЯ Трансформация ДАнных
   Map<String, List<Entities1CMap>> secondConversionData({required List<Map<String, List<Entities1CMap>>> receiveddatafromC1,
     required Logger logger,required int index});

  //TODO  //TODO  Третья  Трансформация ДАнных
  List<Entities1CMap>  thirdtransformationData({required Map<String, List<Entities1CMap>>  thirdtransformationData,
    required Logger logger,required int index});

  //TODO  //TODO  Четвертая   Трансформация ДАнных
 String  fourthtransformation({required  List<Entities1CMap>  getfourthtransformation, required Logger logger});




}





