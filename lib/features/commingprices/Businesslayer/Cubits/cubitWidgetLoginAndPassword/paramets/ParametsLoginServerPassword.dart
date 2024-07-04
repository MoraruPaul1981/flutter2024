

 import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

 abstract   class ParametsStatusServer {
/*  //TODO: Класс с параметры ServerStatus
*      */
   late String _login;
   late String _password;
   late BuildContext _context;
   late Logger _logger;

}

/*//TODO: ParametsServerStatus
*    */
 class ParametsServerStatus  extends ParametsStatusServer {
   ParametsServerStatus(login, password, context, logger);

   String get getlogin => _login;

   void setlogin(String value) {
     _login = value;
   }

   Logger get getlogger => _logger;

   void setlogger(Logger value) {
     _logger = value;
   }

   BuildContext get getcontext => _context;

   void setcontext(BuildContext value) {
     _context = value;
   }

   String get getpassword => _password;

   void setpassword(String value) {
     _password = value;
   }


 }


class  ParametsServerPublicID extends ParametsStatusServer {
  ParametsServerPublicID(login, password, context, logger);

 String get getlogin => _login;

 void setlogin(String value) {
   _login = value;
 }

 Logger get getlogger => _logger;

 void setlogger(Logger value) {
   _logger = value;
 }

 BuildContext get getcontext => _context;

 void setcontext(BuildContext value) {
   _context = value;
 }

 String get getpassword => _password;

 void setpassword(String value) {
   _password = value;
 }


 }





/*  //TODO: ParametsServerPublicID
*      */

