
import 'package:flutter/cupertino.dart';

@immutable
abstract class InterfaceBloc {}


abstract class InterfaceBlocPublicID extends InterfaceBloc {

  Future<void> getbasedonloginandpasswordPublicID({required Map<String, dynamic> parametrgetPublicId}) ;

  Future<int> valuePublicID({required Map<String, dynamic> parametrgetPublicId}) ;

}

