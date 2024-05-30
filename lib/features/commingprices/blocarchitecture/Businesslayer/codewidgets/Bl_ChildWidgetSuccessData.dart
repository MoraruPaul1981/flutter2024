
import 'package:commintprices/features/commingprices/blocarchitecture/Datalayer/entities/Entities1CMap.dart';
import 'package:flutter/src/widgets/async.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';
import '../Interfaces/IntafaceTransformationSuccessData.dart';
import '../Interfaces/IntarfaceCallBaksWidgets.dart';

//TODO: класс бизнес логика для успещного получение данных от 1С
class Bl_ChildWidgetSuccessData implements IntafaceTransformationSuccessData,IntarfaceChildWidgetSuccessData {


  @override
  late BuildContext context;
  @override
  late List<Map<String, List<Entities1CMap>>> receiveddatafromC1;
  @override
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot;
  @override
  late Logger logger;


//TODO: конструктор для бизнес логики усершного получение данных
  Bl_ChildWidgetSuccessData(  this.logger);


  @override
  List<Map<String, List<Entities1CMap>>> firstTransformationionofincomingData({required AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot,
    required Logger logger}) {
    // TODO: implement firstTransformationionofincomingData
    //TODO
    List<Map<String, List<Entities1CMap>>>   getfirstTransformationionofincomingData=[];
    //TODO
    if (!snapshot.hasError && snapshot.hasData) {
      try{
        //TODO первое получение Данных
        getfirstTransformationionofincomingData=  snapshot.data!.cast<Map<String, List<Entities1CMap>>>().toList();
        logger.i('get getfirstTransformationionofincomingData ..  '+getfirstTransformationionofincomingData.toString() );
        //TODO error
      } catch (e, stacktrace) {
        print(' get ERROR $e get stacktrace $stacktrace ');
      }
    }
    return getfirstTransformationionofincomingData;

  }



  @override
  String fourthtransformation({required List<Entities1CMap> getfourthtransformation,
    required Logger logger}) {
    // TODO: implement fourthtransformation
    var getCfo;
    try{
      getCfo=    getfourthtransformation.elementAt(0).CFO as String ;
      logger.i('get getCfo ..  '+getCfo.toString() );
    } catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }
    return getCfo ;
  }




  @override
  Map<String, List<Entities1CMap>> secondConversionData({required List<Map<String, List<Entities1CMap>>> receiveddatafromC1,
    required Logger logger, required int index}) {
    // TODO: implement secondConversionData
    Map<String, List<Entities1CMap>>  getsecondConversionData={};
    try{
      //TODO первое получение Данных
      getsecondConversionData=  receiveddatafromC1.elementAt(index) as     Map<String, List<Entities1CMap>>  ;
      logger.i('get getsecondConversionData ..  '+getsecondConversionData.toString() );
      //TODO error
    } catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }
    return getsecondConversionData;
  }




  @override
  List<Entities1CMap> thirdtransformationData({required Map<String, List<Entities1CMap>> thirdtransformationData,
    required Logger logger, required int index}) {
    // TODO: implement thirdtransformationData
    List<Entities1CMap> childredRowCommintPrices=[];
    try{
      childredRowCommintPrices=   thirdtransformationData.values.single;
      //TODO
      String Key=   thirdtransformationData.keys.single;
      logger.i('get childredRowCommintPrices ..  '+childredRowCommintPrices.toString()+ '' );
    } catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }
    return childredRowCommintPrices;
  }







}