
import 'package:get_it/get_it.dart';

import '../Interfaces/InterfaceDCI.dart';
import '../codewidgets/BI_ChildWidgetError.dart';


class InjectionDependency  implements InterfaceDCI{
  //TODO: переменная для Депендеси Инжексен
  final locator = GetIt.instance;
  //TODO:   #1 DATE
  @override
  void setupSingleton( ) {
    var date;
    try{
      print('setupSingleton');
     // locator.registerSingleton<BI_ChildWidgetError>(BI_ChildWidgetError(buildContext: null, logger: null));
      //TODO error
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }

  }

}