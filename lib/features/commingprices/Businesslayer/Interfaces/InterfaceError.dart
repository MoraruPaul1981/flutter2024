
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';



import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';


abstract  class InterfaceError {

//TODO: writerError
  void writerError( {required Object e, required Object stacktrace  } ) ;

//TODO: writerError
  void writerErrorBig(   {  required  Logger logger ,  required Object e, required Object stacktrace}      ) ;


}







