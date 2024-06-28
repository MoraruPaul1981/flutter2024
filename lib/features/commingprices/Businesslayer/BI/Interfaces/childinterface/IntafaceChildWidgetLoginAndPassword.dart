
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';


@immutable
abstract  class IntafaceChildWidgetLoginAndPassword {



 late BuildContext context;
 late Key? key;
 late Logger logger;


 /* //TODO:
 * Get dont     Reaction Cycle Float
 status   widget   */
 void  clickFloatingButtonForGetLoginAndPassword (int state,
     TextEditingController _loginicController,
     TextEditingController _passwordController);


 /* //TODO:
 * получение логина
 status   widget   */
 String  processingLogin (   { required  TextEditingController loginicController });

 /* //TODO:
 * получение пароля
 status   widget   */
 String  processingPassword (   { required  TextEditingController passwordController });






}





