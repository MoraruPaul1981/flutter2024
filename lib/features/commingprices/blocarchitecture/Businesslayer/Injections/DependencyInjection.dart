
import 'package:get_it/get_it.dart';

import '../Interfaces/InterfaceDCI.dart';



class InjectionDependency  implements InterfaceDCI{
  final getIt = GetIt.instance;

  @override
  void reReceiptofdata() {
    // TODO: implement reReceiptofdata
    try {
      print('reReceiptofdata()');
    } catch (e) {
      print(e);
    }
  }






}