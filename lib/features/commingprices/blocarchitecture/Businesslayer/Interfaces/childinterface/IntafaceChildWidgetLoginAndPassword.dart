
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import '../../../Datalayer/entities/Entities1CMap.dart';


@immutable
abstract  class IntafaceChildWidgetLoginAndPassword {



 late BuildContext context;
 late Key? key;
 late Logger logger;


  /* //TODO:
 * Get Pulic ID ot Serer widgert       */
  void afterSuccessfullaunchthemainprogram({required     int state });




 /* //TODO:
 * Get Pulic   Reaction to someone who came
 status   widget   */
  void  callbAckreactiontosomeonewhocameStatus ({ required int state});

}




