
import 'package:commintprices/features/commingprices/blocarchitecture/Datalayer/entities/Entities1CMap.dart';
import 'package:flutter/src/widgets/async.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';
import '../Interfaces/IntafaceTransformationSuccessData.dart';
import '../Interfaces/IntarfaceBLWidgets.dart';
import '../Interfaces/IntarfaceCallBaksWidgets.dart';


class BI_ChildWidgetProccingError implements IntafaceTransformationSuccessData,IntarfaceChildWidgetSuccessData {



  @override
  late BuildContext context;

  @override
  late List<Map<String, List<Entities1CMap>>> receiveddatafromC1;

  @override
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot;

  @override
  late Logger logger;


//TODO: конструктор для бизнес логики усершного получение данных
  BI_ChildWidgetProccingError(this.context, this.receiveddatafromC1, this.snapshot, this.logger);


  @override
  List<Map<String, List<Entities1CMap>>> firstTransformationionofincomingData({required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot,
    required Logger logger}) {
    // TODO: implement firstTransformationionofincomingData
    throw UnimplementedError();
  }

  @override
  String fourthtransformation({required List<Entities1CMap> getfourthtransformation,
    required Logger logger}) {
    // TODO: implement fourthtransformation
    throw UnimplementedError();
  }

  @override
  Map<String, List<Entities1CMap>> secondConversionData({required List<Map<String, List<Entities1CMap>>> receiveddatafromC1,
    required Logger logger, required int index}) {
    // TODO: implement secondConversionData
    throw UnimplementedError();
  }

  @override
  List<Entities1CMap> thirdtransformationData({required Map<String, List<Entities1CMap>> thirdtransformationData,
    required Logger logger, required int index}) {
    // TODO: implement thirdtransformationData
    throw UnimplementedError();
  }


}