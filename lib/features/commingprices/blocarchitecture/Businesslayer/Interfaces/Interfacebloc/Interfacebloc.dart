
import 'package:flutter/cupertino.dart';

@immutable
abstract class InterfaceBloc {}


abstract class InterfaceBlocPublicID extends InterfaceBloc {


  /*TODO: Status
  *  */
  Future<void> startGettingServerStatus({required Map<String, dynamic> parametrgetPublicId}) ;
  Future<int> futureServerStatus({required Map<String, dynamic> parametrgetPublicId});



  /*TODO: PublicID
  * */
  Future<void> startGettingServerPublicId({required Map<String, dynamic> parametrgetPublicId});
  Future<int> futurePublicID({required Map<String, dynamic> parametrgetPublicId}) ;

}

