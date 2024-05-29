import 'dart:convert';
import 'dart:typed_data' show Uint8List,Uint16List;
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../Datalayer/entities/Entities1CMap.dart';







abstract  class IntarfaceDefalut{

  //TODO переменные
  late BuildContext context;
  late    AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot;
  late    Color alwaysStop;
  late       String currentText;

}


