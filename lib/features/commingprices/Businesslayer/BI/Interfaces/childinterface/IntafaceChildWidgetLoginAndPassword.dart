
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../Cubits/cubitWidgetLoginAndPassword/CubitLoginPassword.dart';


@immutable
abstract  class IntafaceChildWidgetLoginAndPassword {




 /* //TODO:
 * Get dont     Reaction Cycle Float
 status   widget   */
 void  clickFloatingButtonForGetLoginAndPassword (
     int state,
     TextEditingController _loginicController,
     TextEditingController _passwordController,
     BuildContext context,
     CubitLoginPassword   cubitLoginPassword,
     Logger logger);


 /* //TODO:
 * получение логина
 status   widget   */
 String  processingLogin (   { required  TextEditingController loginicController });

 /* //TODO:
 * получение пароля
 status   widget   */
 String  processingPassword (   { required  TextEditingController passwordController });






}





