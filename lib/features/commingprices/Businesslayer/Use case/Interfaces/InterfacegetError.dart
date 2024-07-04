

//TODO  абстрантыный метод для Ошибок
import 'package:logger/logger.dart';

abstract class InterfaceLogger{

 Logger  loggers();

 Future<Logger>  getFuturelogger();

}