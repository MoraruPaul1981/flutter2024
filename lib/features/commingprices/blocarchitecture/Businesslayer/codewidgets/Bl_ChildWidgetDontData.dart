
import 'package:commintprices/features/commingprices/blocarchitecture/Datalayer/entities/Entities1CMap.dart';
import 'package:flutter/src/widgets/async.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';
import '../Interfaces/childinterface/IntafaceChildWidgetSuccessData.dart';
import '../Interfaces/childinterface/IntarfaceVariablesWidgets.dart';

//TODO: класс бизнес логика для успещного получение данных от 1С
class Bl_ChildWidgetDontData   {


  @override
  late BuildContext context;
  @override
  late List<Map<String, List<Entities1CMap>>> receiveddatafromC1;
  @override
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot;
  @override
  late Logger logger;


//TODO: конструктор для бизнес логики усершного получение данных
  Bl_ChildWidgetDontData({ required this.logger});






}