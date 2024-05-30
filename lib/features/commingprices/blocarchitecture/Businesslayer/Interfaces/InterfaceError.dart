
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';



import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';


abstract  class InterfaceError {

//TODO: writerError
  void writerError( {required String message, required Object ext,required BuildContext context ,required Logger logger  } ) ;

  //TODO: writerErrorSimple
  void writerErrorSimple( {required String message, required Object ext } ) ;

}







