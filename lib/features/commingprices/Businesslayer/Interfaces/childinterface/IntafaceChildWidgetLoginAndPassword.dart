
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../Datalayer/entities/Entities1CMap.dart';


@immutable
abstract  class IntafaceChildWidgetLoginAndPassword {



 late BuildContext context;
 late Key? key;
 late Logger logger;


  /* //TODO:
 * Get Pulic ID ot Serer widgert       */
  void callBackSuccessPublicID({required     int state,required BuildContext context });




 /* //TODO:
 * Get Pulic   Reaction to someone who came
 status   widget   */
  void  callBackServerRunAndStop ({ required int state,required BuildContext context});







 void  callBackDontLoginAndPassword ({ required int state,required BuildContext context});



 /* //TODO:
 * Get dont     Reaction Cycle Float
 status   widget   */
 void  clickFloatingButtonForGetLoginAndPassword (String? getlogin,  String? getpassword ,{required int state, required BuildContext context});


 /* //TODO:
 * получение логина
 status   widget   */
 String  processingLogin (   { required  TextEditingController loginicController });

 /* //TODO:
 * получение пароля
 status   widget   */
 String  processingPassword (   { required  TextEditingController passwordController });






}





