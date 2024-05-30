
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';



import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';


abstract  class InterfaceError {

  late BuildContext context;

  late Logger logger;

  void writerError( {required String message, required Object ext } ) ;
}







