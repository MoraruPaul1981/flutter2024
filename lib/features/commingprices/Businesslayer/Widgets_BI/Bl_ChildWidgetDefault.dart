

import 'package:flutter/src/widgets/async.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:logger/logger.dart';

import '../../Datalayer/entities/Entities1CMap.dart';

//TODO: класс бизнес логика для успещного получение данных от 1С
class Bl_ChildWidgetDefault   {


  @override
  late BuildContext context;
  @override
  late List<Map<String, List<Entities1CMap>>> receiveddatafromC1;
  @override
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot;
  @override
  late Logger logger;


//TODO: конструктор для бизнес логики усершного получение данных
  Bl_ChildWidgetDefault({ required this.logger});






}