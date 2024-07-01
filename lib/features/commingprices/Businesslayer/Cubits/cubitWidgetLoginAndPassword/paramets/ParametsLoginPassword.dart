

 import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

 abstract   class ParametsLoginPassword {
/*  //TODO: Класс с параметры ServerStatus
*      */
   late String _login;
   late String _password;
   late BuildContext _context;
   late Logger _logger;
}



 class ParametsServerStatus  extends ParametsLoginPassword {

   String get getlogin => _login;

   set setlogin(String value) {
     _login = value;
   }

   Logger get getlogger => _logger;

   set setlogger(Logger value) {
     _logger = value;
   }

   BuildContext get getcontext => _context;

   set setcontext(BuildContext value) {
     _context = value;
   }

   String get getpassword => _password;

   set setpassword(String value) {
     _password = value;
   }
 }




