
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
  int getCallWidgetFrom1cServerPublicID({required    Map<String, dynamic> parametrgetPublicId,  });


  /* //TODO:
 * Get Pulic  Future ID ot Serer    widget   */
  Future<int> getFutureCallWidgetFrom1cServerPublicID({required    Map<String, dynamic> parametrgetPublicId });


 /* //TODO:
 * Get Pulic   Reaction to someone who came
 status   widget   */
  void  callbAckreactiontosomeonewhocameStatus ({ required int state});

}





